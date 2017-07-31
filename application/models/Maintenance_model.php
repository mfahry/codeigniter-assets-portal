<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Maintenance_model extends CI_Model {
	public function select_all() {
		$sql = "
			SELECT A.ID, asset_ID, HOSTNAME, IP_ADDRESS, EVENT_DATE, DESCRIPTION, DOCUMENT_PATH
			FROM asset_maintenance A
			JOIN asset B ON(A.asset_ID = B.ID)";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function insert($asset_id, $event_date, $description, $document_path, $user_id){
		$sql = "
			INSERT INTO asset_maintenance(asset_ID, EVENT_DATE, DESCRIPTION, DOCUMENT_PATH, USER_ID) VALUES (?, ?, ?, ?, ?)";
		$this->db->query($sql, array($asset_id, $event_date, $description, $document_path, $user_id));
	}

	public function update($asset_id, $event_date, $description, $document_path, $id){
		$sql = "
			UPDATE asset_maintenance SET
				asset_ID = ?,  EVENT_DATE = ?,  DESCRIPTION = ?, DOCUMENT_PATH = ?
			WHERE ID = ?";
		$this->db->query($sql, array(
			$asset_id, $event_date, $description, $document_path,
			$id));
	}

	public function delete($id){
		$sql = "DELETE FROM asset_maintenance WHERE ID = ?";
		$this->db->query($sql, array($id));
	}

	public function select_by_asset_id($asset_id){
		$sql = "SELECT ID, asset_ID, EVENT_DATE, DESCRIPTION, DOCUMENT_PATH FROM asset_maintenance WHERE asset_ID = ?";
		$result = $this->db->query($sql, array($asset_id));
		return $result->result_array();
	}

	public function select_by_id($id){
		$sql = "SELECT ID, asset_ID, EVENT_DATE, DESCRIPTION, DOCUMENT_PATH FROM asset_maintenance WHERE ID = ?";
		$result = $this->db->query($sql, array($id));
		return $result->row_array();
	}

}
?>
