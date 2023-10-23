<style>
    p{
        margin-top: 0;
        margin-bottom: 0;
    }

    .unittype4 svg{
        margin-left: 14px;
    }
</style>

<main id="mainunittype">
    <section id="unittype1" class="unittype1" style="background: linear-gradient(180deg, rgba(0, 0, 0, 0.00) 39.24%, #000 91.32%), linear-gradient(180deg, #000 8.67%, rgba(0, 0, 0, 0.00) 53.35%), url(<?= base_url()."/assets/core-images/header-unittype.png)"?> no-repeat center center fixed; background-size: cover; width: 100%;">
        <div class="container">
            <div class="row">
                <div class="unitimg">
                    <div class="unittext">
                        <div class="row" Data-aos="fade-up">
                            <h1>The<br>Expression<br>of Gratitude</h1>
                        </div>
                        <div class="row mouser mb-5 justify-content-end">
                            <img src="<?php echo base_url(); ?>assets/core-images/mouse-indicator.svg" alt="Logo">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php if($unit) { foreach($unit as $u) { ?>
    
    <section id="unittype2" class="unittype2">
        <div class="container-fluid" data-aos="fade-up">
            <div class="slide">
                <div class="row align-items-center mb-3">
                    <div class="col">
                        <div class="row justify-content-center mb-3">
                            <img src="<?php echo base_url(); ?>assets/core-images/thegramercyunit.svg" alt="Logo">
                        </div>
                        <div class="row justify-content-center">
                            <img src="<?php echo base_url(); ?>assets/core-images/Rectangleunit.svg" alt="Logo">
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-12 slidetextcenter">
                        <div class="row justify-content-center top-fixed">
                            <h1><?= strtoupper($u->unit_name); ?></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="unittype3" class="unittype3" style="background: linear-gradient(180deg, rgba(0, 0, 0, 0.00) 39.24%, #000 91.32%), linear-gradient(180deg, #000 8.67%, rgba(0, 0, 0, 0.00) 53.35%), url(<?= base_url()."/upload/unit/". $u->unit_preview1.")"?> no-repeat center center fixed; background-size: cover; width: 100%;">
        <div class="container">
            <div class="row">
                <div class="unittypeimg">
                    <div class="overlay-text"><h1><?= strtoupper($u->unit_name); ?></h1></div>
                </div>
            </div>
        </div>
    </section>

    <section id="unittype4" class="unittype4">
        <div class="container md-12">
            <div class="row">
                <div class="col-md-5">
                    <img src="<?php echo base_url(); ?>upload/unit/<?= $u->unit_preview1?>" style="object-fit: cover;" alt="Logo" class="mb-5">
                    <img src="<?php echo base_url(); ?>upload/unit/<?= $u->unit_preview2?>" style="object-fit: cover;"  alt="Logo">
                </div>
                <div class="col-md-7">
                    <div class="row align-items-center mb-4 flex-wrap" style="gap: 10px;">
                        <div class="label">
                            <div class="d-flex align-items-center justify-content-center">
                                    <p class="angka d-flex mr-3"><?= strtoupper($u->unit_bedroom ); ?></p>
                                    <img src="<?php echo base_url(); ?>assets/core-images/icon/bedroom.svg" style="width: 30px;height: 30px;" alt="Logo">
                            </div>
                        </div>
                        <div class="label">
                            <svg xmlns="http://www.w3.org/2000/svg" width="7" height="8" viewBox="0 0 7 8" fill="none">
                                    <circle cx="3.5" cy="4" r="3.5" fill="#B0E4DD"/>
                            </svg>
                        </div>
                        <div class="label">
                            <div class="d-flex align-items-center justify-content-center">
                                <p class="angka d-flex mr-3"><?= strtoupper($u->unit_bathroom ); ?></p>   
                                <img src="<?php echo base_url(); ?>assets/core-images/icon/bathroom.svg" style="width: 30px;height: 30px;" alt="Logo">
                            </div>
                        </div>
                        <div class="label">
                            <svg xmlns="http://www.w3.org/2000/svg" width="7" height="8" viewBox="0 0 7 8" fill="none">
                                    <circle cx="3.5" cy="4" r="3.5" fill="#B0E4DD"/>
                            </svg>
                        </div>
                        <div class="label">
                            <div class="d-flex align-items-center justify-content-center">
                                <p class="angka d-flex mr-3"><?= strtoupper($u->unit_luas ); ?> sqm</p>
                                <img src="<?php echo base_url(); ?>assets/core-images/icon/size.svg" style="width: 30px;height: 30px;" alt="Logo">
                                </div>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <p class="text"><?= $u->unit_description; ?></p>
                        </div>
                        <div class="row">
                            <?php if($category) { foreach($category as $c){ ?>
                            <div class="col-lg-12" style="padding-left:0; padding-right:0" >
                                <a href="<?php echo site_url('unit-house'); ?>">
                                    <div class="list-group-item d-flex justify-content-between align-items-start">
                                        <h4 class="text-wrap"><?= $c->gallery_category_name ?></h4>
                                        <img src="<?php echo base_url(); ?>assets/core-images/icon/arrow.svg" style="width: 30px; height: 30px;" alt="Logo">
                                    </div>
                                </a>
                            </div>
                            <?php }} else { ?>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="text-center text-red font-weight-bold">TIDAK ADA DATA</div>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="unittype2" class="unittype2">
        <div class="container-fluid" data-aos="fade-up">
            <div class="slide">
                <div class="row align-items-center">
                    
                </div>
            </div>
        </div>
    </section>

    <?php }} else {?>
        <div class="row">
            <div class="col-md-12">
                <div class="text-center text-red font-weight-bold">TIDAK ADA DATA</div>
            </div>
        </div>
    <?php } ?>

        
    </main>