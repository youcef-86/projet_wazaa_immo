
<!-- partie annonces -->

<div class="annonces">
    <div class="p-2">
        <h5 class="mt-3 float-start">Dérnieres annonces immobilières</h5>
    </div>
    <div class="row row-cols-4">
        <?php
        foreach ($anns as $logem) {
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
                    <a href="<?php echo site_url("Home/detail/".$logem->an_id); ?>" class="btn btn-sm btn-bg-perso"><i class="fa fa-eye"></i> Détails</a>
                    <small class="text-muted"></small><!-- Date d'ajout -->
                </div>
            </div>
        <?php } ?>
    </div>
</div>