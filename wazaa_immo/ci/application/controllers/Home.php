<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		
		// chargement du modele 'AnnonceModel'
		$this->load->model('AnnonceModel');
		// on appelle la methode liste() du modele, qui retourne le tableau de resultat ici affecté dans la variable $aListe (un tableau)
		$listeannonce = $this->AnnonceModel->Liste();
		$variables_annonces['annos'] = $listeannonce;
		$this->load->view('header');
		$this->load->view('accueil', $variables_annonces);
		$this->load->view('footer');
	}

	public function annonce()
	{
		// chargement du modele 'AnnonceModel'
		$this->load->model('AnnonceModel');
		// on appelle la methode liste() du modele, qui retourne le tableau de resultat ici affecté dans la variable $aListe (un tableau)
		$listeannonce = $this->AnnonceModel->Liste();
		$variables_annonces['anns'] = $listeannonce;
		$this->load->view('header');
		$this->load->view('annonces', $variables_annonces);
		$this->load->view('footer');
	}
	
	public function detail($id)
	{
		// chargement du modele 'AnnonceModel'
		$this->load->model('AnnonceModel');
		// on appelle la methode liste() du modele, qui retourne le tableau de resultat ici affecté dans la variable $adetail (un tableau)
		$detailannonce = $this->AnnonceModel->Detail($id);
		// var_dump($Annonceannonce);
		$variables_details['dtls'] = $detailannonce;
		$this->load->view('header');
		$this->load->view('details', $variables_details);
		$this->load->view('footer');
	}

	public function contactes()
	{
		$this->load->view('header');
		$this->load->view('contact');
		$this->load->view('footer');
	}

	public function apropo()
	{
		$this->load->view('header');
		$this->load->view('apropos');
		$this->load->view('footer');
	}

	public function connect()
	{
		$this->load->view('header');
		$this->load->view('connexion');
		$this->load->view('footer');
	}

	public function inscript()
	{ 
		$this->load->view('header');
		$this->load->view('inscription');
		$this->load->view('footer');
	}

	public function reinitialion()
	{
		$this->load->view('header');
		$this->load->view('reinitialiser');
		$this->load->view('footer');
	}
}













