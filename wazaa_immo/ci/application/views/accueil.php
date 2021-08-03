<section>
    <div class="container-fluid">
        <div class="row">
            <div class="logo">
                <img src="<?php echo base_url("assets/IMG/021.png"); ?>" class="img-fluid w-100" alt="arriere plan">
            </div>
            <!-- recherche -->
            <div class="encart p-5 text-center">
                <div class="form_search">
                    <div class="p-5">
                        <h1>wazaa immo</h1>
                        <p>N°1 de la confiance depuis 10 ans avec beaucoup d'annonces immobilières</p>
                        <form>
                            <div class="input-group">
                                <div class="input-group mb-3">
                                    <select <input type="text" class="form-control" placeholder="Recherche" aria-label="Recherche" aria-describedby="button-addon2">
                                        <option selected></option>
                                        <option value="location">Location</option>
                                        <option value="vente">Vente</option>
                                    </select>
                                    <button class="btn btn-outline-success" type="button" id="button-addon2">Recherche</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section>
    <!-- Quelques annonces -->
    <div class="annonces">
        <div class="p-2">
            <h5 class="mt-3 float-start">Dérnieres annonces immobilières</h5>
        </div>
        <div class="row row-cols-4">
            <?php
            foreach ($annos as $logem) {
            ?>
                <div class="card border-bg-perso mb-4 shadow-sm" id="photo1">
                    <div class="card-header text-center">
                        <h2 class="h5 card-title">
                            <a href="annonces/details/" class="color-perso"></a>
                        </h2><!-- Titre -->
                        <h3 class="h6 card-subtitle text-muted"></h3><!-- Référence -->
                        <a href="annonces/details/">
                            <div id="carouselControls" class="carousel slide" data-interval="false">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="<?php echo base_url("assets/IMG/3-1.jpg"); ?>" class="d-block w-100 carouselheight" alt="">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="<?php echo base_url("assets/IMG/3-2.jpg"); ?>" class="d-block w-100 carouselheight" alt="">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="<?php echo base_url("assets/IMG/3-3.jpg"); ?>" class="d-block w-100 carouselheight" alt="">
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselControls" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselControls" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </a>
                    </div>
                    <div class="card-body">
                        <ul class="list-group list-group-flush">
                        <li class="list-group-item"><?php echo $logem->an_titre; ?> <?php echo $logem->log_type_de_bien; ?></li><!-- titre et type du bien -->
                            <li class="list-group-item">Id<?php echo $logem->an_id; ?></li><!-- reference -->
                            <li class="list-group-item">Ref: <?php echo $logem->log_reference; ?></li><!-- reference -->
                            <li class="list-group-item">Surface: <?php echo $logem->log_surf_hab; ?>m²</li><!-- Surface Totale -->
                            <li class="list-group-item">Prix: <?php echo $logem->log_prix; ?></li><!-- Prix -->
                        </ul>
                    </div>
                    <div class="card-footer d-flex justify-content-between align-items-center">
                        <a href="<?php echo site_url("Home/detail"); ?>" class="btn btn-sm btn-bg-perso"><i class="fa fa-eye"></i> Détails</a>
                        <small class="text-muted"></small><!-- Date d'ajout -->
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>

<section>
    <div class="container">
        <!-- commentaire des clients -->
        <div class="p-2 h4 mx-auto w-100">
            <p class="text-center">CE QUE DISENT NOS CLIENT</p>
        </div>
        <div id="myCarousel" class="carousel slide text-center justify-content-center" data-ride="carousel">
            <hr id="ligne">
            <!-- indicateurs -->
            <div class="p-2">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
            </div>
            <!-- diapo -->
            <div class="carousel-inner d-flex justify-content-around" role="listbox">
                <div class="carousel-item active">
                    <p class="text-primary w-50 h-100 fs-2">"Cette agence est la meilleure. Je suis tellement content du résultat!"<span>Michael Roe, Vice President, zone de commentaires</span></p>
                </div>
                <div class="carousel-item">
                    <p class="text-primary w-50 h-100 fs-2"><i>"Un mot... WOW!!"</i><span>John Doe, vendeur, Representant Inc</span></p>
                </div>
                <div class="carousel-item">
                    <p class="text-primary w-50 h-100 fs-2"><i>"Pourais-je...ETRE encore plus heureux avec cette agence?"</i><span>Chandler Bing, Acteur, FriendsAlot</span></p>
                </div>
            </div>
            <hr id="ligne">
            <!-- commandes gauche et droite -->
            <div class="p-2">
                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
            </div>
            <div class="p-2">
                <a class="carousel-control-nextl" href="#myCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
    </div>
</section>














