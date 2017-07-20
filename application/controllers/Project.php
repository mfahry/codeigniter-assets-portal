<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Project extends CI_Controller {

	public function __construct() {
		parent::__construct();

		//	check session user
		if(! $this->session->has_userdata("user")){
			redirect("user/login");
		}
		$this->template_data["session_user"] = $this->session->userdata("user");

		$this->data = array();
		if($this->session->userdata("info") != "") {
			$this->data["info"] = $this->session->userdata("info");
			$this->session->set_userdata("info","");
		}
	}

	public function index() {
			$this->load->model("project_model");
			$this->data["project"] = $this->project_model->select_all();

			$this->template_data["content"] = $this->load->view("project_list", $this->data, TRUE);
			$this->load->view("template", $this->template_data);
	}

	public function add(){
		if($this->input->post()){
			$project_name = $this->input->post("project_name");
			$start_date = $this->input->post("start_date");
			$end_date = $this->input->post("end_date");
			$budget = $this->input->post("budget");
      $expense = $this->input->post("expense");
      $status = $this->input->post("status");
      $description = $this->input->post("description");

      $this->load->model("project_model");
      $id = $this->project_model->insert($project_name, $start_date, $end_date, $budget, $expense, $status, $description);

      $asset_id = $this->input->post("asset_id");
      foreach($asset_id as $row){
        $this->project_model->insert_project_asset($id, $row);
      }

      $info = array(
				"text" => "data berhasil diinputkan ke sistem",
				"class" => "alert-success");
  		$this->data["info"] = $info;

		}

		$this->load->model("asset_model");
		$this->data["asset"] = $this->asset_model->select_all();
		$this->template_data["content"] = $this->load->view("project_form", $this->data, TRUE);
		$this->load->view("template", $this->template_data);
	}

	public function modify($id){
		$this->load->model("project_model");
		$this->load->model("asset_model");

		if($this->input->post()){
      $project_name = $this->input->post("project_name");
			$start_date = $this->input->post("start_date");
			$end_date = $this->input->post("end_date");
			$budget = $this->input->post("budget");
      $expense = $this->input->post("expense");
      $status = $this->input->post("status");
      $description = $this->input->post("description");

      $this->load->model("project_model");
      $this->project_model->update($project_name, $start_date, $end_date, $budget, $expense, $status, $description, $id);

      $this->project_model->delete_project_asset($id);
      $asset_id = $this->input->post("asset_id");
      foreach($asset_id as $row){
        $this->project_model->insert_project_asset($id, $row);
      }

			$info = array(
				"text" => "data berhasil diupdate ke sistem",
				"class" => "alert-success");
  		$this->data["info"] = $info;

		}
		$this->data["project"] = $this->project_model->select_by_id($id);
		$this->data["asset"] = $this->asset_model->select_all();
		$this->data["asset_selected"] = $this->project_model->select_asset_by_id($id);

		//prepared to checklist in all asset
		$asset_selected_id = array();
		foreach($this->data["asset_selected"] as $row){
			array_push($asset_selected_id, $row["ID"]);
		}
		$this->data["asset_selected_id"] = $asset_selected_id;
		$this->template_data["content"] = $this->load->view("project_form_modify", $this->data, TRUE);
		$this->load->view("template", $this->template_data);
	}

	public function drop($id){
		$this->load->model("project_model");
		$this->project_model->delete_project_asset($id);
		$this->project_model->delete($id);
		$info = array(
			"text" => "data berhasil dihapus dari sistem",
			"class" => "alert-danger");
		$this->session->set_userdata("info", $info);
		redirect("project");
	}
}
