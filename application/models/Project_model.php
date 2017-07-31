<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Project_model extends CI_Model {
	public function select_all() {
		$sql = "
			SELECT
        ID, PROJECT_NAME, START_DATE, END_DATE, BUDGET, EXPENSE, STATUS, DESCRIPTION
      FROM project";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function insert($project_name, $start_date, $end_date, $budget, $expense, $status, $description) {

		$sql = "
			INSERT INTO project (
				PROJECT_NAME, START_DATE, END_DATE, BUDGET, EXPENSE, STATUS, DESCRIPTION
			) VALUES (
				?, ?, ?, ?, ?, ?, ?
			)";
		$this->db->query($sql, array($project_name, $start_date, $end_date, $budget, $expense, $status, $description));
    return $this->db->insert_id();
	}

  public function insert_project_asset($project_id, $asset_id) {
      $sql = "INSERT INTO project_asset(PROJECT_ID, ASSET_ID) VALUES(?, ?)";
      $this->db->query($sql, array($project_id, $asset_id));
  }

  public function delete_project_asset($project_id){
    $sql = "DELETE FROM project_asset WHERE PROJECT_ID = ?";
    $this->db->query($sql, array($project_id));
  }

	public function update($project_name, $start_date, $end_date, $budget, $expense, $status, $description, $id){
		$sql = "
			UPDATE project SET
				PROJECT_NAME = ?, START_DATE = ?, END_DATE = ?, BUDGET = ?, EXPENSE = ?, STATUS = ?, DESCRIPTION = ?
			WHERE ID = ?";
		$this->db->query($sql, array($project_name, $start_date, $end_date, $budget, $expense, $status, $description, $id));
	}

	public function delete($id){
		$sql = "DELETE FROM project WHERE ID = ?";
		$this->db->query($sql, array($id));
	}

	public function select_asset_by_id($id){
		$sql = "
      SELECT
        B.ID, BRAND, TYPE, C.NAME AS 'GROUP', LOCATION,
        HOSTNAME, IP_ADDRESS, ACTIVE, OPERATING_SYSTEM, SERIAL_NUMBER
      FROM project_asset A
      JOIN asset B ON(A.ASSET_ID = B.ID)
      JOIN asset_group C ON(B.GROUP_ID = C.ID)
      WHERE PROJECT_ID = ?";
		$result = $this->db->query($sql, array($id));
		return $result->result_array();
	}

	public function select_by_id($id){
    $sql = "
			SELECT
        ID, PROJECT_NAME, START_DATE, END_DATE, BUDGET, EXPENSE, STATUS, DESCRIPTION
      FROM project WHERE ID = ?";
		$result = $this->db->query($sql, array($id));
		return $result->row_array();
	}
}
?>
