<?php

class Products_model extends CI_Model {
	public function __construct()
	{
		parent::__construct();
		// Your own constructor code
	}
	public function get_all_items()
	{
		$query = $this->db->get('cp_products');
		return $query->result();
	}
}
?>
