<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		//	check session user
		if(! $this->session->has_userdata("user")){
			redirect("user/login");
		}
		if(
			$this->session->userdata("user")["user_type"] != "SYS" &&
			$this->session->userdata("user")["user_type"] != "ORGANIC") {
			redirect("maintenance");
		}
		$this->template_data["session_user"] = $this->session->userdata("user");

		$this->data = array();
		if($this->session->userdata("info") != "") {
			$this->data["info"] = $this->session->userdata("info");
			$this->session->set_userdata("info","");
		}
	}

	public function index()
	{
		$this->load->model("dashboard_model");

		$period = date("Y-m");
		$this->data["maintenance"] = $this->dashboard_model->maintenance_total_per_month($period);
		$troubleshoot= $this->dashboard_model->troubleshoot_total_per_month($period);
		$this->data["troubleshoot_on"] = 0;
		$this->data["troubleshoot_off"] = 0;
		foreach($troubleshoot as $row){
			if($row["STATUS"] == "Y") {
				$this->data["troubleshoot_on"] = $row["TOTAL"];
			}
			else {
				$this->data["troubleshoot_off"] = $row["TOTAL"];
			}
		}

		$procurement = $this->dashboard_model->procurement_total_per_month($period);
		$this->data["procurement_pending"] = 0;
		$this->data["procurement_done"] = 0;
		foreach($procurement as $row){
			if($row["STATUS"] == "PENDING") {
				$this->data["procurement_pending"] = $row["TOTAL"];
			}
			else {
				$this->data["procurement_done"] = $row["TOTAL"];
			}
		}

		$this->data["user"] = $this->dashboard_model->latest_four_login();
		$this->template_data["content"] = $this->load->view("dashboard", $this->data, TRUE);
		$this->load->view("template", $this->template_data);
	}

	public function generate_calendar_event(){
		$this->load->model("dashboard_model");
		$period = date("Y-m");
		$reminder_asset = $this->dashboard_model->reminder_asset_critical_date($period);
		$reminder_upcoming = $this->dashboard_model->reminder_upcoming_event($period);
		$event = array();
		foreach($reminder_asset as $row){
			$data = array();
			if(date("Y-m", strtotime($row["EXPIRED_MAINTENANCE_DATE"])) == $period) {
				$info = "Maintenance Habis";
				$data["start"] = $row["EXPIRED_MAINTENANCE_DATE"];
			}
			else if(date("Y-m", strtotime($row["END_OF_SALE_DATE"])) == $period) {
				$info = "End of Sale";
				$data["start"] = $row["END_OF_SALE_DATE"];
			}
			else if(date("Y-m", strtotime($row["END_OF_LIFE_DATE"])) == $period) {
				$info = "End of Life";
				$data["start"] = $row["END_OF_LIFE_DATE"];
			}
			else if(date("Y-m", strtotime($row["END_OF_SUPPORT_DATE"])) == $period) {
				$info = "End of Support";
				$data["start"] = $row["END_OF_SUPPORT_DATE"];
			}
			$data["title"] = $info." - ".$row["BRAND"]." / ".$row["TYPE"]." / ".$row["HOSTNAME"]." (".$row["IP_ADDRESS"].")";
			$data["extra"] = $row;
			$data["info"] = $info;
			array_push($event, $data);
		}

		foreach($reminder_upcoming as $row){
			$data = array();
			$data["title"] = "Schedule Terjadwal - ".$row["USERNAME"];
			$data["start"] = $row["REMINDER_DATE"];
			$data["extra"] = $row;
			array_push($event, $data);
		}

		echo json_encode($event);
	}

	public function generate_bar_chart(){
		$this->load->model("dashboard_model");
		$availability_asset = $this->dashboard_model->asset_availability_per_group();

		$data = array();
		$labels = array();
		$data_active = array();
		$data_non_active = array();
		foreach($availability_asset as $row){
			array_push($labels, $row["GROUP_NAME"]);
			array_push($data_active, $row["ACTIVE"]);
			array_push($data_non_active, $row["NON_ACTIVE"]);
		}
		$data["labels"] = $labels;

		$datasets = array();
		//	per dataset
		$dataset["label"] = "# of Available";
		$dataset["backgroundColor"] = "#26B99A";
		$dataset["data"] = $data_active;
		array_push($datasets, $dataset);

		$dataset["label"] = "# of Not Available";
		$dataset["backgroundColor"] = "#aeaeae";
		$dataset["data"] = $data_non_active;
		array_push($datasets, $dataset);

		$data["datasets"] = $datasets;
		echo json_encode($data);
	}

	public function generate_report_finansial(){
		$data = array();
		$data["labels"] = array();
		$data["datasets"] = array();

		//generate budget, expense, label per year
		$year = date("Y");
		$budget = array();
		$expense = array();
		for($i = 2; $i >= 0; $i--){
			array_push($data["labels"], $year - $i);
			$budget[$year - $i] = 0;
			$expense[$year - $i] = 0;
		}

		//select new budget period
		$this->load->model("parameter_model");
		$parameter = $this->parameter_model->select_by_id(2);
		$new_budget_period = $parameter["VALUE"];

		//select data
		$this->load->model("dashboard_model");
		$result = $this->dashboard_model->select_report_project_three_year($year + 1);
		foreach($result as $row){
			$start_date = $row["START_DATE"];
			$period_start_date = substr($start_date, 0, 4)."-".$new_budget_period;

			$get_budget_before = 0;
			$period_min = substr($start_date, 0, 4);
			$dt_start_date = new DateTime($start_date);
			$dt_period_start_date = new DateTime($period_start_date);

			if($dt_start_date < $dt_period_start_date) {
				$get_budget_before = 1;
				$period_min = $period_min - 1;
			}

			$end_date = $row["END_DATE"];
			$period_end_date = substr($end_date, 0, 4)."-".$new_budget_period;

			$get_budget_after = 0;
			$period_max = substr($end_date, 0, 4);
			$dt_end_date = new DateTime($end_date);
			$dt_period_end_date = new DateTime($period_end_date);
			if($dt_end_date < $dt_period_end_date) {
				$period_max = $period_max - 1;
			}

			//generate divider for budget and expense
			$devider = 1;
			if($period_max != $period_min) {
				$devider += $period_max - $period_min;
			}
			//echo $period_max." - ".$period_min;
			$budget_temp = $row["BUDGET"] / $devider;
			$expense_temp = $row["EXPENSE"] / $devider;
			for($i = $period_min; $i <= $period_max; $i++){
				if(array_key_exists($i, $budget)) {
					$budget[$i] += $budget_temp;
					$expense[$i] += $expense_temp;
				}
			}

			//echo $row["START_DATE"]." - ".$row["END_DATE"]." - ".$row["BUDGET"]." - ".$row["EXPENSE"]." - ".$devider." - ".$get_budget_before."<br/>";
		}

		$budget_data = array();
		foreach($budget as $row){
			array_push($budget_data, floor($row));
		}

		$expense_data = array();
		foreach($expense as $row){
			array_push($expense_data, floor($row));
		}
		$dataset["label"] = "Anggaran";
		$dataset["fill"] = FALSE;
		$dataset["lineTension"] = 0.1;
		$dataset["backgroundColor"] = "rgba(38, 185, 154, 0.31)";
		$dataset["borderColor"] = "rgba(38, 185, 154, 0.7)";
		$dataset["pointBorderColor"] = "rgba(38, 185, 154, 0.7)";
		$dataset["pointBackgroundColor"] = "rgba(38, 185, 154, 0.7)";
		$dataset["pointHoverBackgroundColor"] = "#fff";
		$dataset["pointHoverBorderColor"] = "rgba(220,220,220,1)";
		$dataset["pointBorderWidth"] = 1;

		$dataset["data"] = $budget_data;

		array_push($data["datasets"], $dataset);

		$dataset["label"] = "Pengeluaran";
		$dataset["fill"] = FALSE;
		$dataset["lineTension"] = 0.1;
		$dataset["backgroundColor"] = "rgba(3, 88, 106, 0.3)";
		$dataset["borderColor"] = "red";
		$dataset["pointBorderColor"] = "rgba(3, 88, 106, 0.70)";
		$dataset["pointBackgroundColor"] = "rgba(3, 88, 106, 0.70)";
		$dataset["pointHoverBackgroundColor"] = "#fff";
		$dataset["pointHoverBorderColor"] = "rgba(151,187,205,1)";
		$dataset["pointBorderWidth"] = 1;
		$dataset["data"] = $expense_data;

		array_push($data["datasets"], $dataset);

		echo json_encode($data);
	}
}
