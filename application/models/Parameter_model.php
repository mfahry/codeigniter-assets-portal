<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Parameter_model extends CI_Model {
	public function select_all()
	{
		$sql = "SELECT ID, NAME, DESCRIPTION, VALUE FROM parameter";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function select_by_id($id)
	{
		$sql = "SELECT ID, NAME, DESCRIPTION, VALUE FROM parameter WHERE ID = ?";
		$result = $this->db->query($sql, array($id));
		return $result->row_array();
	}

	public function insert($name, $value, $description) {
		$sql = "INSERT INTO parameter(NAME, VALUE, DESCRIPTION) VALUE(?, ?, ?)";
		$result = $this->db->query($sql, array($name, $value, $description));
	}

	public function update($name, $value, $description, $id) {
		$sql = "UPDATE parameter SET NAME = ?, VALUE = ?, DESCRIPTION = ? WHERE ID = ?";
		$result = $this->db->query($sql, array($name, $value, $description, $id));
	}
}
?>
