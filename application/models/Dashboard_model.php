<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model {
	public function asset_availability_per_group(){
		$sql = "
			SELECT
				A.ID GROUP_ID, A.NAME GROUP_NAME,
				IFNULL(SUM(IF(ACTIVE = 'Y', 1, 0)),0) ACTIVE, IFNULL(SUM(IF(ACTIVE = 'N', 1, 0)),0) NON_ACTIVE
			FROM asset_group A
			LEFT JOIN  asset B ON(A.ID = B.GROUP_ID)
			GROUP BY A.ID, A.NAME";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function maintenance_total_per_month($date){
		$sql = "SELECT COUNT(ID) TOTAL FROM asset_maintenance WHERE DATE_FORMAT(EVENT_DATE, '%Y-%m') = ?";
		$result = $this->db->query($sql, array($date));
		return $result->row_array();
	}

	public function troubleshoot_total_per_month($date){
		$sql = "
			SELECT
				SOLVED STATUS, COUNT(ID) TOTAL
			FROM asset_troubleshoot
			WHERE DATE_FORMAT(EVENT_DATE, '%Y-%m') = ?
			GROUP BY SOLVED";
		$result = $this->db->query($sql, array($date));
		return $result->result_array();
	}

	public function procurement_total_per_month($date){
		$sql = "
			SELECT
				STATUS, COUNT(ID) TOTAL
			FROM asset_procurement_maintenance
			WHERE DATE_FORMAT(FILLING_DATE, '%Y-%m') = ?
			GROUP BY STATUS";
		$result = $this->db->query($sql, array($date));
		return $result->result_array();
	}

	public function latest_four_login(){
		$sql = "SELECT ID, USERNAME, LAST_LOGIN, USER_TYPE FROM user ORDER BY LAST_LOGIN DESC LIMIT 4";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function reminder_asset_critical_date($date){
		$sql = "
			SELECT
				A.ID, B.NAME GROUP_NAME, BRAND, TYPE, IP_ADDRESS, LOCATION,
				HOSTNAME, EXPIRED_MAINTENANCE_DATE, END_OF_SALE_DATE, END_OF_LIFE_DATE, END_OF_SUPPORT_DATE
			FROM asset A
			JOIN asset_group B ON(A.GROUP_ID = B.ID)
			WHERE DATE_FORMAT(EXPIRED_MAINTENANCE_DATE, '%Y-%m') = ? OR DATE_FORMAT(END_OF_SALE_DATE, '%Y-%m') = ? OR DATE_FORMAT(END_OF_LIFE_DATE, '%Y-%m') = ? OR DATE_FORMAT(END_OF_SUPPORT_DATE, '%Y-%m') = ?";
		$result = $this->db->query($sql, array($date, $date, $date, $date));
		return $result->result_array();
	}

	public function reminder_upcoming_event($date){
		$sql = "
			SELECT
				A.ID, C.NAME GROUP_NAME, BRAND, TYPE, IP_ADDRESS, LOCATION,
				HOSTNAME, D.USERNAME, REMINDER_DATE, A.DESCRIPTION
			FROM asset_upcoming_event A
			JOIN asset B ON(A.asset_ID = B.ID)
			JOIN asset_group C ON(B.GROUP_ID = C.ID)
			JOIN user D ON(A.user_ID = D.ID)
			WHERE DATE_FORMAT(REMINDER_DATE, '%Y-%m') = ? AND STATUS IN('WAITING REMINDER', 'PENDING')";
		$result = $this->db->query($sql, array($date));
		return $result->result_array();
	}

	public function select_report_project_three_year($year){
		$sql = "
			SELECT BUDGET, EXPENSE, START_DATE, END_DATE
			FROM project
			WHERE
				(END_DATE BETWEEN STR_TO_DATE((SELECT CONCAT('".$year."-', VALUE) FROM parameter WHERE ID = 2), '%Y-%m-%d') - INTERVAL 3 YEAR
				AND STR_TO_DATE((SELECT CONCAT('".$year."-', VALUE) FROM parameter WHERE ID = 2), '%Y-%m-%d')) OR
				(START_DATE BETWEEN STR_TO_DATE((SELECT CONCAT('".$year."-', VALUE) FROM parameter WHERE ID = 2), '%Y-%m-%d') - INTERVAL 3 YEAR
				AND STR_TO_DATE((SELECT CONCAT('".$year."-', VALUE) FROM parameter WHERE ID = 2), '%Y-%m-%d'))
		";
		$result = $this->db->query($sql);
		return $result->result_array();
	}
}
?>
