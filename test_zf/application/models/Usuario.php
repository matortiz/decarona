<?php

/**
 * @author 
 * @copyright 2012
 */

class Application_Model_Usuario
{
    protected $_id;
    
    protected $_nombre;
    
    protected $_email;
    
    public function __construct(array $options = null) {
        if (is_array($options)) {
            $this->setOptions($options);
        }
    }
    
    public function setId($id) {
        $this->_id = (int) $id;
        return $this;
    }
    
    public function getId() {
        return $this->_id;
    }
    
    public function setNombre($nombre) {
        $this->_nombre = (string) $nombre;
        return $this;
    }
    
    public function getNombre() {
        return $this->_nombre;
    }
    
    public function setEmail($email) {
        $this->_email = (string) $email;
        return $this;
    }
    
    public function getEmail() {
        return $this->_email;
    }
    
    public function setOptions(array $options) {
        $methods = get_class_methods($this);
        foreach ($options as $key => $value) {
            $method = 'set' . ucfirst($key);
            if (in_array($method, $methods)) {
                $this->$method($value);
            }
        }
        return $this;
    }
    
    public function __set($name, $value) {
        $method = 'set' . $name;
        if (('mapper' == $name) || !method_exists($this, $method)) {
            throw new Exception('Invalid ususario property');
        }
        $this->$method($value);
    }
 
    public function __get($name) {
        $method = 'get' . $name;
        if (('mapper' == $name) || !method_exists($this, $method)) {
            throw new Exception('Invalid ususario property');
        }
        return $this->$method();
    }
}