<?php

class UsuarioController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $this->view->title = "Listado de Usuarios";
        $this->view->headTitle($this->view->title, 'PREPEND');  
        $usuario = new Application_Model_UsuarioMapper();
        $this->view->entries = $usuario->fetchAll();
    }


}

