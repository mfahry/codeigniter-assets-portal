<?php
class Welcome_model extends CI_Model {

	public function select_reminder_asset() {
		$sql = "SELECT VALUE FROM parameter WHERE ID = 1";
		$result = $this->db->query($sql);
		$result = $result->row_array();
		$value = $result["VALUE"];

		$sql = "
			SELECT
				A.ID, B.NAME GROUP_NAME, BRAND, TYPE, IP_ADDRESS, LOCATION,
				HOSTNAME, EXPIRED_MAINTENANCE_DATE, END_OF_SALE_DATE,
				END_OF_LIFE_DATE, '' USERNAME, '' REMINDER_DATE, '' DESCRIPTION,
				'EXPIRED' INFO, CURDATE() - INTERVAL ".$value." DAY AS ALERT_DATE
			FROM asset A
			JOIN asset_group B ON(A.GROUP_ID = B.ID)
			WHERE
				EXPIRED_MAINTENANCE_DATE = CURDATE() - INTERVAL ".$value." DAY OR
				END_OF_SALE_DATE = CURDATE() - INTERVAL ".$value." DAY OR
				END_OF_LIFE_DATE = CURDATE() - INTERVAL ".$value." DAY OR
				END_OF_SUPPORT_DATE = CURDATE() - INTERVAL ".$value." DAY
			UNION
			SELECT
				A.ID, C.NAME GROUP_NAME, BRAND, TYPE, IP_ADDRESS, LOCATION,
				HOSTNAME, EXPIRED_MAINTENANCE_DATE, END_OF_SALE_DATE, END_OF_LIFE_DATE,
				D.USERNAME, REMINDER_DATE, A.DESCRIPTION,
				'EVENT' INFO, CURDATE() - INTERVAL ".$value." DAY AS ALERT_DATE
			FROM asset_upcoming_event A
			JOIN asset B ON(A.ASSET_ID = B.ID)
			JOIN asset_group C ON(B.GROUP_ID = C.ID)
			JOIN user D ON(A.USER_ID = D.ID)
			WHERE REMINDER_DATE = CURDATE() - INTERVAL ".$value." DAY AND STATUS IN('WAITING REMINDER', 'PENDING')";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

}
?>
