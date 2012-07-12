<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Usuario extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
    }

    public function index()
    {
        $data['query'] = $this->db->get('tbl_usuario');
        $this->load->view('usuario/list', $data);
    }
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */