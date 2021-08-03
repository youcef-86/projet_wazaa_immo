<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AnnonceModel extends CI_Model {
    
                   // recuperationdes details de l'annonce

    //  public function detail(){
    //      $requete = $this->db->query("select* FROM waz_logement");
    //     $aDetail = $requete->result();   
    //     return $aDetail;
    // }

    public function detail($id){
        $req = "select* FROM waz_logement join waz_annonce on waz_logement.log_id = waz_annonce.an_log_id where `an_id`= ?";
        $requete = $this->db->query($req, [$id]);
        $aDetail = $requete->result();
        return $aDetail;
    }


                   // afficher les infos du bien par la vue   

    public function liste(){
        $requete = $this->db->query("SELECT * FROM v_annonce_liste");// Préparation de la requête "SELECT"
        $aListe = $requete->result();// Traitement du resultat
        return $aListe; // Retourne le resultat
    }


    public function UPDATE(){
        // Connexion à la base de données

        // Préparation de la requête "SELECT"

        // Execution de la requête

        // Traitement du resultat

        // Retourne le resultat
    }
}
