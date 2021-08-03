<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Users extends CI_Controller
{

    // inscription

    public function register()
    {

        $data['title'] = 'inscription';

        $this->form_validation->set_rules('us_nom', 'Nom', 'required');
        $this->form_validation->set_rules('us_prenom', 'Prenom', 'required');
        $this->form_validation->set_rules('us_pseudo', 'Pseudo', 'required'); //|callback_check_pseudo_exists');
        $this->form_validation->set_rules('us_email', 'Email', 'required'); //|callback_check_email_exists');
        $this->form_validation->set_rules('us_password', 'Password', 'required');
        $this->form_validation->set_rules('us_password2', 'Confirm Password', 'matches[us_password]');

        if ($this->form_validation->run() === FALSE) {
            // $this->load->view('header');
            // $this->load->view('inscription', $data);
            // $this->load->view('footer');
            redirect('Home/inscript');
        } else {
            //Encrypt password /                                                  (bcrypt a regarder)
            $enc_password = md5($this->input->post('us_password'));


            $this->UserModel->register($enc_password);

            // set messsage
            $this->session->set_flashdata('user_registered', 'inscription réussie !');
            redirect('Home/connect');
        }
    }


    //connexion
    public function connexion()
    {
        // $data['title'] = 'connexion';

        $this->form_validation->set_rules('us_email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('us_password', 'Password', 'required');

        if ($this->form_validation->run() === FALSE) {

            redirect('Home/connect');
            // $this->load->view('header');
            // $this->load->view('connexion', $data);
            // $this->load->view('footer');
        } else {
            //get email
            $email = $this->input->post('us_email');


            //get and encrypt the password
            $password = md5($this->input->post('us_password'));


            //login user
            $this->load->model('ConnexionModel');
            $user_id = $this->UserModel->connexion($email, $password);

            if ($user_id) {
                //create session
                $user_data = array(
                    'user_id' => $user_id,
                    'email' => $email,
                    'logged_in' => true
                );

                $this->session->set_userdata($user_data);

                //set message
                $this->session->set_flashdata('user_loggedin', 'Vous êtes connectés !!!');

                redirect('Home/index');
            } else {

                //set message
                $this->session->set_flashdata('login_failed', 'connexion invalide');

                redirect('Home/connect');
            }
        }
    }

    //deconnexion
    public function logout()
    {
        // unset user data
        $this->sessions->unset_userdata('logged_in');
        $this->sessions->unset_userdata('user_id');
        $this->sessions->unset_userdata('email');

        // set message
        $this->session->set_flashdata('user_loggedout', 'Vous êtes déconnecté');

        redirect('Home/connect');
    }


    //vérifier si le pseudo existe
    // public function check_pseudo_exists($pseudo)
    // {
    //     $this->form_validation->set_message('check_pseudo_exists', 'pseudo déja pris, veuillez en choisir un autre !');
    //     if ($this->UserModel->check_pseudo_exists($pseudo)) {
    //         return true;
    //     } else {
    //         return false;
    //     }
    // }
        
    //verifier si l'email exist
    // public function check_email_exists($email)
    // {
    //     $this->form_validation->set_message('check_email_exists', 'Email déja pris, veuillez en choisir un autre !');
    //     if ($this->UserModel->check_email_exists($email)) {
    //         return true;
    //     } else {
    //         return false;
    //     }
    // }
}











          
    // public function connexion()
    // {
    //     session_start();

    //     if (isset($_POST['email']) && isset($_POST['password']))  //verifier si les données via poste si elle existe
    //     {
    //         // stoqué les poste dans les htmlspecialchars pour eviter la faille scss

    //         $email = htmlspecialchars($_POST['email']);
    //         $password = htmlspecialchars($_POST['password']);
    //         // chargement du modele 'ConnexionModel'
    //         $this->load->model('ConnexionModel');
    //         // on appelle la methode connexion() du modele, qui retourne le tableau de resultat ici affecté dans la variable $aConnexion (un tableau)
    //         $connect = $this->ConnexionModel->Connexion($email);
    //         // var_dump($connect);

    //         if (!empty($connect)) {

    //             // var_dump($connect[0]->us_password);
    //              if ($connect[0]->us_password === $password) {
    //             //     $_SESSION['users'] = $connect['us_pseudo'];
    //              header('Location:' . base_url());
    //              }else{
    //                 header('Location:' . site_url("Home/connect")."?login_err=password");
    //              }
    //         } else {
    //             header('Location:' . site_url("Home/connect")."?login_err=email");
    //         }



    //         // if ($ == 1)                                   //si la valeur de $row =1 c'est que la personne existe 
    //         // {
    //         //     if (filter_var($email, FILTER_VALIDATE_EMAIL))            //verifier si l'adresse email est bien valide
    //         //     {
    //         //         $password = hash('SHA256', $password);
    //         //         /*verifier si le mp saisi est celui en bdd*/
    //         //         if ($data['us_password'] === $password) {
    //         //             $_SESSION['users'] = $data['us_pseudo'];
    //         //             header('Location: landing.php');
    //         //         } else header('Location:connexion.php?login_err=password');
    //         //     } else header('Location:connexion.php?login_err=email');            //si elle n'est pas valide
    //         // } else header('Location:connexion.php?login_err=already');            //sinon elle existe pas
    //     } else header('Location:' . site_url("Home/connect")."?login_err=already");
    // }
    //}