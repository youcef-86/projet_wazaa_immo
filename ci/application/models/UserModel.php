<?php

defined('BASEPATH') or exit('No direct script access allowed');

    class UserModel extends CI_Model{
          //inscription
        public function register($enc_password)
        {
            //tableau de données utilisateur 
            $data = array(
                'us_nom' => $this->input->post('us_nom'),
                'us_prenom' => $this->input->post('us_prenom'),
                'us_pseudo' => $this->input->post('us_pseudo'),
                'us_email' => $this->input->post('us_email'),
                'us_password' => $enc_password,
            );

            // insert user
            return $this->db->insert('waz_users', $data);
        }


            //connexion (connecter l'utilisateur)

        public function connexion($email, $password){
                // valider
            $this->db->where('us_email', $email);
            $this->db->where('us_password', $password);
        
            $result = $this->db->get('waz_users');
                
        
            if($result->num_rows() == 1){
                    
                return true;
            }else {
                    
                return false;
            }                               
        }



        //vérifier si le pseudo existe
        // public function check_pseudo_exists($pseudo)
        // {
        //     $query = $this->db->get_where('waz_users', array('us_pseudo' => $pseudo));
        //     if (empty($query->row_array())) {
        //         return true;
        //     } else {
        //         return false;
        //     }
        // }

        //vérifier si l'email' existe
        // public function check_email_exists($email)
        // {
        //     $query = $this->db->get_where('waz_users', array('us_email' => $email));
        //     if (empty($query->row_array())) {
        //         return true;
        //     } else {
        //         return false;
        //     }
        // }
    }
















     // $check = $this->db->query('SELECT us_pseudo, us_email, us_password FROM waz_users WHERE us_email = ?', [$email]);
    // $aConnexion = $check->result();                                  
    // return $aConnexion;    