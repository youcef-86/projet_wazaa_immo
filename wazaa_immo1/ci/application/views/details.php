<section style="background-color: #ccccb3;">
    <div class="container">
        <?php
        foreach ($dtls as $det) {
        ?>
            <form action="" method="POST" enctype="multipart/form-data">
                <div class="d-flex flex-row justify-content-between">
                    <div class="d-flex justify-content-start bd-highlight p-2">
                        <strong><?php echo $det->log_type_de_bien; ?> à
                            <?php echo $det->log_localisation; ?></strong> 
                    </div>
                    <div class="d-flex justify-content-end bd-highlight p-2">
                        <strong>Prix : <?php echo $det->log_prix; ?></strong>
                    </div>
                </div>
                <div class="text-nowrap bd-highlight p-2">
                    <strong><?php echo $det->log_pieces; ?>pieces <?php echo $det->log_surf_hab; ?>M2</strong>
                </div>
                <div class="d-flex flex-row bd-highlight p-auto m-auto">
                    <div class="p-3 bd-highlight w-75"><img src="<?php echo base_url("assets/IMG/6-1.jpg"); ?>" class="img-fluid rounded ms-auto d-block" alt=""></div>
                    <div class="d-flex flex-column bd-highlight">
                        <div class="d-flex flex-row">
                            <div class="p-2 bd-highlight"><img src="<?php echo base_url("assets/IMG/6-2.jpg"); ?>" class="img-fluid rounded-3 p-2" style="width: 22rem;" alt=""></div>
                            <div class="p-2 bd-highlight"><img src="<?php echo base_url("assets/IMG/6-3.jpg"); ?>" class="img-fluid rounded-3 p-2" style="width: 22rem;" alt=""></div>
                        </div>
                        <div class="mt-auto mb-3 bd-highlight w-50 bg-light p-2 ml-3">
                            Ref: <?php echo $det->log_reference; ?>
                        </div>
                        <div class="mt-auto mb-3 bd-highlight w-50 bg-light p-2 ml-3">
                            Numéro logement: <?php echo $det->log_id; ?>
                        </div>
                    </div>
                </div>
                <div class="text-nowrap bd-highlight p-2">
                    <strong><?php echo $det->log_type_de_bien; ?></strong>
                </div>
                <div class="p-2">
                    <?php echo $det->log_description; ?>
                </div>
                <div class="mt-3 d-flex flex-row-reverse">
                    <a href="<?php echo site_url("Home/contactes"); ?>" class="border border-success text-success btn btn-light btn-lg text-center mb-5" style="width: 10rem;">Contacter</a>
                </div>
            </form>
        <?php } ?>
    </div>
</section>