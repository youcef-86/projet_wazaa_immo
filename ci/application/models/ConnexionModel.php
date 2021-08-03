<!-- connexion.php -->

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ConnexionModel extends CI_Model {




     //check email exists
     public function check_email_exists($email)
     {
         $query = $this->db->get_where('waz_users', array('us_email' => $email));
         if (empty($query->row_array())) {
             return true;
         } else {
             return false;
         }
     }

}










 