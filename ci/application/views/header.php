<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="<?php echo base_url("assets/css/style.css"); ?>">
    <title>wazaa_immo</title>
</head>

<body class="mx-5">
    <header id="showcase">
        <!-- menu de navigation -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <!-- image logo -->
            <img class="logo_wazaa" height="60" width="70" id="logo" src="<?php echo base_url("assets/IMG/wazaa_logo.png"); ?>" alt="logo">
            <!-- bouton hamburger mobile -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="<?php echo base_url(); ?>">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url("Home/annonce"); ?>">Annonces</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url("Home/contactes"); ?>">contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo site_url("Home/apropo"); ?>">A propos</a>
                    </li>
                </ul>

                <!-- <input type="button" value="Connexion"> -->
                <div>
                    <a class="btn btn-outline-secondary" href="<?php echo site_url("Home/connect"); ?>"><strong>Connexion</strong></a
                </div>
                <div>
                    <a class="btn btn-outline-secondary" href="<?php echo site_url("Users/logout"); ?>"><strong>Déconnexion</strong></a>
                </div> 
            </div>
        </nav>
    </header>
<!-- image promo -->
<img class="mw-auto" height="120" width="100%" src="<?php echo base_url("assets/IMG/wazaa-.jpg"); ?>" alt="promo" title="promotion">
   
        