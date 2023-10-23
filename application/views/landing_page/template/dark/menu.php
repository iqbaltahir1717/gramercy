<style>
    .navbar{
        background: #040403 !important;
       
    }
    .nav-link{
        color: #fafafa !important;
    }
    .unittype1{
        margin-top: 0;
    }
    #header{
        background: #040403;
    }
    .developer1{
        margin-top: 0;
    }
</style>

<body>    
    <header id="header">
        <div class="container">
            <nav class="navbar navbar-white navbar-expand-md">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-nav">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
                    <path d="M5 24H27" stroke="#fffff" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M5 16H27" stroke="#fffff" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M5 8H27" stroke="#fffff" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </button>

                <div class="navbar-collapse collapse dual-nav order-1 order-md-0">
                <ul class="navbar-nav align-items-center">
                    <li class="nav-item">
                    <a class="nav-link" href="<?php echo base_url(); ?>">
                        <img src="<?php echo base_url(); ?>assets/core-images/whatapp-white.svg"  alt="Logo">
                    </a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link active" href="<?php echo base_url(); ?>">Home</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link active" href="<?php echo site_url('unit-house'); ?>">Unit Type</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link active" href="<?php echo site_url('page/siteplan'); ?>">Siteplan</a>
                    </li>
                </ul>
                </div>

                <a href="<?php echo base_url();?>" class="scrollto"><img src="<?php echo base_url()?>assets/core-images/logogramercy-white.svg" class="navbar-brand mx-auto order-0 order-md-5 p-2"></a>

                <div class="navbar-collapse collapse dual-nav order-4 order-md-4 justify-content-end">
                <ul class="navbar-nav align-items-center">
                    <li class="nav-item">
                    <a class="nav-link active" href="<?php echo site_url('project'); ?>">Projects</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link active" href="<?php echo site_url('developer'); ?>">Developer</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link active" href="<?php echo site_url('blog-news'); ?>">News</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?php echo base_url(); ?>">
                            <img src="<?php echo base_url(); ?>assets/core-images/icon/instagram-white.svg" alt="Logo">
                        </a>
                    </li>
                </ul>
                </div>
            </nav>
        </div>
    </header><!-- End Header -->
</body>