<?php

class Email {

    private $id = "";
    private $email = "";
    private $senha = "";
    private $usuarios_id = "";


    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */ 
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of email
     */ 
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set the value of email
     *
     * @return  self
     */ 
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get the value of senha
     */ 
    public function getSenha()
    {
        return $this->senha;
    }

    /**
     * Set the value of senha
     *
     * @return  self
     */ 
    public function setSenha($senha)
    {
        $this->senha = $senha;

        return $this;
    }

    /**
     * Get the value of usuarios_id
     */ 
    public function getUsuarios_id()
    {
        return $this->usuarios_id;
    }

    /**
     * Set the value of usuarios_id
     *
     * @return  self
     */ 
    public function setUsuarios_id($usuarios_id)
    {
        $this->usuarios_id = $usuarios_id;

        return $this;
    }
}
