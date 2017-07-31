<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function not_found()
	{
		$this->load->view('page_404');
	}

	public function internal_error()
	{
		$this->load->view('page_500');
	}

	public function alert_telegram(){
		$this->load->model("welcome_model");
		$result = $this->welcome_model->select_reminder_asset();

		// get authentication telegram bot app
		$data = array(
			"username" => "oms",
			"password" => "A553t_M4n463m3nt!@#"
		);

		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, "172.18.104.79/customercare/auth/getToken");
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);

		$curlResult = curl_exec($ch);
		curl_close($ch);

		$auth = json_decode($curlResult, true);
		$text = "Test Alert From ASSET MANAGEMENT BOT";
		/*foreach($result as $row) {
			if($row["INFO"] == "EXPIRED") {
				if($row["EXPIRED_MAINTENANCE_DATE"] == $row["ALERT_DATE"]) {
					$info = "Maintenance Habis";
				}
				if($row["END_OF_SALE_DATE"] == $row["ALERT_DATE"]) {
					$info = "End of Sale";
				}
				if($row["END_OF_LIFE_DATE"] == $row["ALERT_DATE"]) {
					$info = "End of Life";
				}
				if($row["END_OF_SUPPORT_DATE"] == $row["ALERT_DATE"]) {
					$info = "End of Support";
				}
				$text = "<b>".$info."</b>".chr(10).$row["BRAND"]." ".$row["TYPE"]." [ ".$row["HOSTNAME"]." / ".$row["IP_ADDRESS"]." ]".chr(10).chr(10)."Mohon Persiapkan Ijin Prinsip atau yang lainnya";
			}
			else {
				$text = "<b>Schedule Terjadwal untuk ".$row["USERNAME"]."</b>".chr(10)."Perihal : ".$row["DESCRIPTION"];
			}
*/
			if(array_key_exists("success", $auth["result"])) {
				$token = $auth["result"]["token"];

				$data = array(
					"botID" => "419658025:AAHVTD5DTtGvDXVbhnGH0wDkZfWloeoR5r0",
					"token" => $token,
					"text" => $text,
					"chatID" => "@scheduleAlertOMS"
				);

				// send message
				$ch = curl_init();
				curl_setopt($ch, CURLOPT_URL, "172.18.104.79/customercare/auth/sendMessageThirdApp");
				curl_setopt($ch, CURLOPT_POST, 1);
				curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
				curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
				curl_setopt( $ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));

				$curlResult = curl_exec($ch);
				curl_close($ch);

				$auth = json_decode($curlResult, true);
				if( ! array_key_exists("success", $auth["result"])) {
					echo $auth["result"]["error"];
				}
			}
			else {
				echo $auth["result"]["error"];
				//break;
			}
		}
	//}
}
