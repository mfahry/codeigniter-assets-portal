<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Procurement_model extends CI_Model {
	public function select_all() {
		$sql = "
			SELECT
				A.ID, ASSET_ID, HOSTNAME, IP_ADDRESS, FILLING_DATE,
				DESCRIPTION, DONE_DATE, STATUS, DOCUMENT_PATH, A.USER_ID, C.USERNAME
			FROM asset_procurement_maintenance A
			JOIN asset B ON(A.ASSET_ID = B.ID)
			JOIN user C ON(A.USER_ID = C.ID)";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function insert($asset_id, $filling_date, $description, $done_date, $status, $document_path, $user_id) {

		$sql = "
			INSERT INTO asset_procurement_maintenance (
				ASSET_ID, FILLING_DATE, DESCRIPTION, DONE_DATE, STATUS, DOCUMENT_PATH, USER_ID
			) VALUES (
				?, ?, ?, ?, ?, ?, ?
			)";
		$this->db->query($sql, array($asset_id, $filling_date, $description, $done_date, $status, $document_path, $user_id));
	}

	public function update($asset_id, $description, $done_date, $status, $document_path, $id){
		$sql = "
			UPDATE asset_procurement_maintenance SET
				ASSET_ID = ?,  DESCRIPTION = ?, DONE_DATE = ?, STATUS = ?, DOCUMENT_PATH = ?
			WHERE ID = ?";
		$this->db->query($sql, array(
			$asset_id, $description, $done_date, $status, $document_path,
			$id));
	}

	public function delete($id){
		$sql = "DELETE FROM asset_procurement_maintenance WHERE ID = ?";
		$this->db->query($sql, array($id));
	}

	public function select_by_asset_id($asset_id){
		$sql = "SELECT ID, ASSET_ID, FILLING_DATE, DESCRIPTION, DONE_DATE, STATUS, DOCUMENT_PATH FROM asset_procurement_maintenance WHERE ASSET_ID = ? ORDER BY FILLING_DATE DESC LIMIT 5";
		$result = $this->db->query($sql, array($asset_id));
		return $result->result_array();
	}

	public function select_by_id($id){
		$sql = "
			SELECT ID, ASSET_ID, FILLING_DATE, DESCRIPTION, DONE_DATE, STATUS, DOCUMENT_PATH
			FROM asset_procurement_maintenance WHERE ID = ?";
		$result = $this->db->query($sql, array($id));
		return $result->row_array();
	}
}
?>
