<!-- image promo -->
<img class="mw-auto" height="120" width="100%" src="<?php echo base_url("assets/IMG/wazaa-.jpg"); ?>" alt="promo" title="promotion">
   
<!-- formulaire de connexion.php -- -->


<div id="bloc" class="p-4">
        <!-- flash message -->
        <!-- <?php if ($this->session->flashdata('user_registered')) { ?>
            <p class="alert alert-seccess"><?php echo $this->session->flashdata('user_registered');?></p>
        <?php } else if ($this->session->flashdata('login_failed')) {  ?>
            <p class="alert alert-seccess"><?php echo $this->session->flashdata('login_failed');?></p>
        <?php }; ?> -->

        <?php
        $message = '';
        switch (true) {
            case ($this->session->flashdata('user_registered') != Null):
                $message = $this->session->flashdata('user_registered');
                break;
            case ($this->session->flashdata('login_failed') != Null):
                $message = $this->session->flashdata('login_failed');
                break;
            case ($this->session->flashdata('user_loggedin')!= Null):
                $message = $this->session->flashdata('user_loggedin');
                break;
            case ($this->session->flashdata('user_loggedout')!= Null):
                $message = $this->session->flashdata('user_loggedout');
                break;
        }

        if (!empty($message)) { ?>
            <div class="container">
                <p class="alert alert-success"><?= $message; ?></p>
            </div>
        <?php } ?>

    <h2 class="text-center">CONNEXION</h2>
    <hr>
    <div class="login-form">

        <form action="<?php echo site_url("Users/connexion"); ?>" method="post">

            <p class="text-center"><small>Si vous êtes déjè inscrit(e), identifiez-vous pour accéder à votre espace personnel :</small></p>
            <?php echo form_open('connexion'); ?>
            <!--email-->
            <div class="form-group">
                <input type="email" name="us_email" class="form-control" placeholder="Email" required="required" autocomplete="off">
            </div>
            <!--password-->
            <div class="form-group">
                <input type="password" name="us_password" class="form-control" placeholder="Mot de passe" required="required" autocomplete="off">
            </div>
            <!-- mot de passe oublié -->
            <div>
                <a href="<?php echo site_url("Home/reinitialion"); ?>" class="link">Mot de passe oublié ?</a>
            </div>
            <!-- bouton de connexion -->
            <div class="form-group text-center">
                <button type="submit" class="btn btn-primary btn-block">Connexion</button>
            </div>
            <!-- inscription -->
            <div class="form-group text-center">
                <a class="text-center" href="<?php echo site_url("Home/inscript"); ?>">Inscription</a>
            </div>
            <?php echo form_close(); ?>
        </form>
    </div>
</div>