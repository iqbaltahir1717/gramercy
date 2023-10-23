<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends CI_Controller {
    function __construct() {
		parent::__construct();
		$this->load->model('m_news');
		$this->load->model('m_news_category');
		$this->load->model('m_gallery');
		$this->load->model('m_field');
		$this->load->model('m_siteplan');
      $this->load->model('m_cluster');
		$this->load->model('m_optical');
		$this->load->model('m_unit');
		$this->load->model('m_unit_gallery_category');
		$this->load->model('m_project');
	}

	// INFORMATION
    public function information(){
		$this->session->unset_userdata('sess_search_information');

        // PAGINATION
        $baseUrl    = base_url() . "page/information/".$this->uri->segment(3)."/".$this->uri->segment(4)."/";
        $totalRows  = count((array) $this->m_news->read('','','',$this->uri->segment(3),$this->uri->segment(4)));
        $perPage    = 10;
        $uriSegment = 5;
        $paging     = generatePaginationBlog($baseUrl, $totalRows, $perPage, $uriSegment);
        $page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;
        
        $data['numbers']    = $paging['numbers'];
        $data['links']      = $paging['links'];
        $data['total_data'] = $totalRows ;
        
		// DATA
		$data['setting']             = getSetting();
		$data['news']                = $this->m_news->read($perPage, $page,'', $this->uri->segment(3),$this->uri->segment(4));
		$data['field']               = $this->m_field->read('','','');
		$data['recent']              = $this->m_news->read(4,0,'',1,'');
		$data['news_category']       = $this->m_news_category->read('','','');
		$data['news_category_name']  = $this->m_news_category->get($this->uri->segment(3));

		// TEMPLATE
		$view         = "landing_page/page/news";
		$viewCategory = "all";
		TemplateLandingPage($data, $view, $viewCategory);
	}

	public function information_search(){

		if ($this->input->post('key')) {
            $data['search'] = $this->input->post('key');
            $this->session->set_userdata('sess_search_information', $data['search']);
        } else {
            $data['search'] = $this->session->userdata('sess_search_information');
        }
        
        // PAGINATION
        $baseUrl    = base_url() . "page/information_search/".$this->uri->segment(3)."/".$this->uri->segment(4)."/".$data['search']."/";
        $totalRows  = count((array)$this->m_news->read('','',$data['search'],$this->uri->segment(3), $this->uri->segment(4)));
        $perPage    = 10;
        $uriSegment = 6;
        $paging     = generatePaginationBlog($baseUrl, $totalRows, $perPage, $uriSegment);
        $page       = ($this->uri->segment($uriSegment)) ? $this->uri->segment($uriSegment) : 0;
        
        $data['numbers']    = $paging['numbers'];
        $data['links']      = $paging['links'];
        $data['total_data'] = $totalRows ;
        
        //DATA
        $data['setting']             = getSetting();
        $data['news']                = $this->m_news->read($perPage, $page, $data['search'],$this->uri->segment(3), $this->uri->segment(4));
        $data['field']               = $this->m_field->read('','','');
        $data['recent']              = $this->m_news->read(4,0,'',1,'');
        $data['link']                = $this->m_link->read('','','');
        $data['news_category']       = $this->m_news_category->read('','','');
        $data['news_category_name']  = $this->m_news_category->get($this->uri->segment(3));
        

		// TEMPLATE
		$view         = "landing_page/page/news";
		$viewCategory = "all";
		TemplateLandingPage($data, $view, $viewCategory);
	}

	

    public function information_detail(){
		// DATA
		$data['setting']             = getSetting();
		$data['news']                = $this->m_news->getBySlug($this->uri->segment(5));
		$data['field']               = $this->m_field->read('','','');
		$data['recent']              = $this->m_news->read(4,0,'',1,'');
		$data['link']                = $this->m_link->read('','','');
		$data['news_category']       = $this->m_news_category->read('','','');
        $data['news_category_name']  = $this->m_news_category->get($this->uri->segment(3));

		// COUNT VIEW
		$news['news_id']         = $data['news'][0]->news_id;
		$news['news_count_view'] = ($data['news'][0]->news_count_view + 1);
		$this->m_news->update($news);
		
		
		// TEMPLATE
		$view         = "landing_page/page/news_detail";
		$viewCategory = "all";
		TemplateLandingPage($data, $view, $viewCategory);
	}


	// KONTAK/PESAN
    public function contact(){
		// DATA
		$data['setting']             = getSetting();
		$data['link']                = $this->m_link->read('','','');
		$data['news_category']       = $this->m_news_category->read('','','');

		// TEMPLATE
		$view         = "landing_page/page/contact";
		$viewCategory = "all";
		TemplateLandingPage($data, $view, $viewCategory);
	}

	// UNIT TYPE
    public function unit_type(){
		// DATA
		$data['setting']             = getSetting();
		$data['unit']       = $this->m_unit->read('','','');
		$data['category']       = $this->m_unit_gallery_category->read('','','');

		// TEMPLATE
		$view         = "landing_page/page/unittype";
		$viewCategory = "all";
		if($this->uri->segment(1) == 'unit-house'){
			TemplateLandingPageBlack($data, $view, $viewCategory);
		} else {
			TemplateLandingPage($data, $view, $viewCategory);}
	}

	// SITE PLAN
    public function siteplan(){
		// DATA
		$data['setting']       = getSetting();
		$data['optical']       = $this->m_optical->read('','','');
		$data['siteplan']      = $this->m_siteplan->read('','','');
		$data['cluster']       = $this->m_cluster->read('','','');

		// TEMPLATE
		$view         = "landing_page/page/siteplan";
		$viewCategory = "all";
		TemplateLandingPage($data, $view, $viewCategory);
	}

	// PROJECT
    public function project(){
		// DATA
		$data['setting']             = getSetting();
		$data['project']       = $this->m_project->read('','','');

		// TEMPLATE
		$view         = "landing_page/page/project";
		$viewCategory = "all";
		TemplateLandingPage($data, $view, $viewCategory);
	}

	// DEVELOPER
    public function developer(){
		// DATA
		$data['setting']             = getSetting();
		$data['developer']       = $this->m_content->get();

		// TEMPLATE
		$view         = "landing_page/page/developer";
		$viewCategory = "all";
		if($this->uri->segment(1) == 'developer'){
			TemplateLandingPageBlack($data, $view, $viewCategory);
		} else {
			TemplateLandingPage($data, $view, $viewCategory);}
	}

}
