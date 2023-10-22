<body class="fontRubik">    
        <header id="header" class="fixed-top ">
            <div class="container d-flex align-items-center">
                <nav class="nav-menu d-none d-lg-block navbar navbar-expand-lg">
                    <div class="container ms">
                        <a class="navbar-brand" href="<?php echo base_url(); ?>">
                            <img src="<?php echo base_url(); ?>assets/core-images/whatapp.svg" alt="Logo">
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav mx-auto">
                                <li class="active">
                                    <a href="<?php echo base_url(); ?>">Home</a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('page/unittype'); ?>">Unit Type</a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('page/siteplan'); ?>">Siteplan</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <a class="ml-2 logogramercy" href="<?php echo base_url();?>" class="scrollto"><img src="<?php echo base_url()?>assets/core-images/logogramercy.svg"></a>
                <nav class="nav-menu d-none d-lg-block navbar navbar-expand-lg">
                    <div class="container">
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav mx-auto">
                                <li class="active">
                                    <a href="<?php echo site_url('page/project'); ?>">Projects</a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('page/developer'); ?>">Developer</a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('page/newsgramercy'); ?>">News</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            <a id="menu-icon" type="button" class="ml-2 align-items-end" style="color:white;font-size:20px" href="<?php echo base_url();?>" class="scrollto"><img src="<?php echo base_url()?>assets/core-images/navigation-garis.svg"></a>
            </div>
        </header><!-- End Header -->
</body>