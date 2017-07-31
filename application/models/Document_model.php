<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Document_model extends CI_Model {
	public function select_all() {
		$sql = "SELECT ID, NAME, PATH, DESCRIPTION FROM document";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function insert($name, $description, $path) {
		$sql = "INSERT INTO document(NAME, DESCRIPTION, PATH) VALUES (?, ?, ?)";
		$this->db->query($sql, array($name, $description, $path));
	}

	public function update($name, $description, $path, $id) {
		$sql = "UPDATE document SET NAME = ?, DESCRIPTION = ?, PATH = ? WHERE ID = ?";
		$this->db->query($sql, array($name, $description, $path, $id));
	}

	public function delete($id){
		$sql = "DELETE FROM document WHERE ID = ?";
		$this->db->query($sql, array($id));
	}

	public function select_by_id($id){
		$sql = "SELECT ID, NAME, PATH, DESCRIPTION FROM document WHERE ID = ?";
		$result = $this->db->query($sql, array($id));
		return $result->row_array();
	}
}
?>
