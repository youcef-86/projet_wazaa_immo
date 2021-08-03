<!-- image promo -->
<img class="mw-auto" height="120" width="100%" src="<?php echo base_url("assets/IMG/wazaa-.jpg"); ?>" alt="promo" title="promotion">
   

<div id="bloc">
    <h2 class="text-center p-2">Créer un compte</h2>
    <hr>
    <div class="login-form">
        <h2 class="text-center p-2">Inscription</h2>
        <?php echo form_open('Users/register'); ?>
        <!-- nom -->
        <div class="form-group">
            <label>Nom</label>
            <input type="text" name="us_nom" class="form-control" placeholder="nom" required="required" autocomplete="off">
        </div>
        <!-- prenom -->
        <div class="form-group">
            <label>Prenom</label>
            <input type="text" name="us_prenom" class="form-control" placeholder="prenom" required="required" autocomplete="off">
        </div>
        <!-- login -->
        <div class="form-group">
            <label>Pseudo</label>
            <input type="text" name="us_pseudo" class="form-control" placeholder="pseudo" required="required" autocomplete="off">
        </div>
        <!-- email -->
        <div class="form-group">
            <label>Email</label>
            <input type="text" name="us_email" class="form-control" placeholder="Email" required="required" autocomplete="off">
        </div>
        <!-- mot de passe -->
        <div class="form-group">
            <label>Password</label>
            <input type="password" name="us_password" class="form-control" placeholder="Mot de passe" required="required" autocomplete="off">
        </div>
        <!-- confirmation de mot de passe -->
        <div class="form-group">
            <label>Confirmation Password</label>
            <input type="password" name="us_password2" class="form-control" placeholder="Re-tapez le mot de passe" required="required" autocomplete="off">
        </div>
        <!-- boutton inscription -->
        <div class="form-group p-4">
            <button type="submit" class="btn btn-primary btn-block">Inscription</button>
        </div>
        <?php echo form_close(); ?>
    </div>
</div>




