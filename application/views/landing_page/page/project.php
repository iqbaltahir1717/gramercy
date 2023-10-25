<main class="mainprojects">
    <section id="projects1" class="projects1">
        <div class="container">
            <div class="mt-3">
                <h1>Our Projects at <br> Alam Sutera</h1>
            </div>
            <div class="mt-3">
                <p>Discover a life of unmatched luxury and comfort at <br>our premier housing project, meticulously designed <br>for warmth and prestige. </p>
            </div>
        </div>
    </section>

    <section id="projects2" class="projects2 justify-content-center">
        <div class="container">
            <div class="row mt-5 justify-content-center">
                <img class="logobrand" src="<?php echo base_url(); ?>assets/core-images/alamsutera3.png" alt="Logo">
            </div>
            <div class="row cardnya mt-3 justify-content-center">
                <?php if($project){ foreach($project as $p) { ?>
                <!-- batas -->
                <div class="col-md-6">
                    <a href="<?= site_url();?>page/project_detail/<?= $p->project_id; ?>">
                        <div class="card-project mt-5">
                            <img src="<?php echo base_url(); ?>upload/project/<?= $p->project_cover; ?>" class="card-img-top" alt="project_cover">
                            <div class="mt-3">
                                <div class="d-flex justify-content-between align-items-center">
                                    <h1><?= $p->project_name; ?></h1>
                                    <img src="<?php echo base_url()?>assets/core-images/icon/arrow-up.svg" >
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <?php }} else { ?>
                    <div class="text-danger text-center col-md-12 mt-5"> <b>DATA TIDAK ADA</b></div>
                <?php }?>
            </div>
        </div>
    </section>
    <section id="siteplan7" class="siteplan7">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="row">
                        <h1>EXCEPTIONAL EXPERIENCE</h1>
                    </div>
                    <div class="row text">
                        <p>We are committed to providing top quality creations. from complete facilities to enjoyable entertainment centers. Reimagine your life at a higher standard.</p>
                    </div>
                    <div class="row dev">
                        <a href="<?php echo site_url('developer'); ?>">
                            <button type="button">About Developers <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                            </svg>
                            </button>
                        </a>
                    </div>
                </div>
                <div class="col-md-7">
                    <img src="<?php echo base_url(); ?>assets/core-images/developerpeople.svg" alt="Logo">
                </div>
            </div>
        </div>
    </section>
</main>