<?php

class SubCategoria {

    private $id = "";
    private $descricao = "";
    private $categorias_id = "";
    private $ativo = "";        


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
     * Get the value of descricao
     */ 
    public function getDescricao()
    {
        return $this->descricao;
    }

    /**
     * Set the value of descricao
     *
     * @return  self
     */ 
    public function setDescricao($descricao)
    {
        $this->descricao = $descricao;

        return $this;
    }

    /**
     * Get the value of categorias_id
     */ 
    public function getCategorias_id()
    {
        return $this->categorias_id;
    }

    /**
     * Set the value of categorias_id
     *
     * @return  self
     */ 
    public function setCategorias_id($categorias_id)
    {
        $this->categorias_id = $categorias_id;

        return $this;
    }

    /**
     * Get the value of ativo
     */ 
    public function getAtivo()
    {
        return $this->ativo;
    }

    /**
     * Set the value of ativo
     *
     * @return  self
     */ 
    public function setAtivo($ativo)
    {
        $this->ativo = $ativo;

        return $this;
    }
}
