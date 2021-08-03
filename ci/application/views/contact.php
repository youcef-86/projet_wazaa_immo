
<!-- image promo -->
<img class="mw-auto" height="120" width="100%" src="<?php echo base_url("assets/IMG/wazaa-.jpg"); ?>" alt="promo" title="promotion">
   

<div class="p-2 ml-5 mr-5 text-center">
    <h4 class="text-center">Nous Contacter</h4>
    <hr>
</div>

<form id="Inscription" align="center">

    <div class="p-2 ml-5 mr-5 text-start" align="center">
        <h5>Vos coordonnées :</h5><br>
        <!-- nom -->
        <div class="row mb-3 ml-5 col-sm-7">
            <label for="colFormLabel" class="col-sm-2 col-form-label">Nom* :</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="colFormLabel" placeholder="Veuillez saisir votre nom" required>
            </div>
        </div>
        <!-- prenom -->
        <div class="row mb-3 ml-5 col-sm-7">
            <label for="colFormLabel" class="col-sm-2 col-form-label">Prénom* :</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="colFormLabel" placeholder="Veuillez saisir votre prénom" required>
            </div>
        </div>
        <!--adresse-->
        <div class="row mb-3 ml-5 col-sm-7">
            <label for="colFormLabel" class="col-sm-2 col-form-label">Adresse :</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="colFormLabel" placeholder="Veuillez saisir votre adresse" required>
            </div>
        </div>
        <!--code postal-->
        <div class="row mb-3 ml-5 col-sm-7">
            <label for="colFormLabel" class="col-sm-2 col-form-label">Code postal* :</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="colFormLabel" placeholder="Veuillez saisir votre code postal" required>
            </div>
        </div>
        <!--ville-->
        <div class="row mb-3 ml-5 col-sm-7">
            <label for="colFormLabel" class="col-sm-2 col-form-label">Ville :</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="colFormLabel" placeholder="Veuillez saisir votre ville" required>
            </div>
        </div>
        <!-- telephone -->
        <div class="row mb-3 ml-5 col-sm-7">
            <label for="colFormLabel" class="col-sm-2 col-form-label">Télephone:</label>
            <div class="col-sm-10">
                <input type="tel" class="form-control" id="colFormLabel" placeholder="Veuillez saisir votre télephone" required>
            </div>
        </div>
        <!--email-->
        <div class="row mb-3 ml-5 col-sm-7">
            <label for="colFormLabel" class="col-sm-2 col-form-label">Email* :</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="colFormLabel" placeholder="Veuillez saisir votre adresse Email" required>
            </div>
        </div>
    </div>
    <!--sujet-->
    <div class="p-2 ml-5 mr-5" align="center">
        <div class="ml-5">
            <p>Votre demande :</p>
        </div>
        <div class="row mb-3 ml-5 col-sm-7">
            <label for="sujet" class="col-sm-2 col-form-label">Sujet :</label>
            <div class="col-sm-10">
                <select class="form-control" id="sujet" name="sujet">
                    <option selected>Veuillez séléctionner un sujet</option>
                    <option value="location">Location</option>
                    <option value="vente">Vente</option>
                    <option value="achat">Achat</option>
                    <option value="autres">Autres</option>
                </select>
            </div>
        </div>
        <!--votre question-->
        <div class="row mb-3 ml-5 col-sm-7">
            <label for="message" class="col-sm-2 col-form-label">Message:</label>
            <div class="col-sm-10">
                <textarea class="form-control" id="message" rows="2" name="message"></textarea>
                <span id="error_question"></span>
            </div>
        </div>

        <!--confirmation de l'envoie-->
        <div class="form-group p-2">
            <div class="custom-control">
                <input type="checkbox" class="custom-control-input" id="formulaire" name="formulaire" required>
                <label class="custom-control-label" for="formulaire">J'accepte le traitement informatique de ce formulaire</label>
                <span id="error_formulaire"></span>
            </div>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-outline-success" name="envoyer" value="Envoyer">
            <input type="reset" class="btn btn-outline-success" name="annuler" value="Annuler">
        </div>
    </div>
</form>