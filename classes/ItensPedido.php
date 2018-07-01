<?php

class ItensPedido {

    private $id = null;
    private $descricao = "";
    private $quantidade = "";
    private $produtos_id = "";        
    private $pedidos_id = "";


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
     * Get the value of quantidade
     */ 
    public function getQuantidade()
    {
        return $this->quantidade;
    }

    /**
     * Set the value of quantidade
     *
     * @return  self
     */ 
    public function setQuantidade($quantidade)
    {
        $this->quantidade = $quantidade;

        return $this;
    }

    /**
     * Get the value of produtos_id
     */ 
    public function getProdutos_id()
    {
        return $this->produtos_id;
    }

    /**
     * Set the value of produtos_id
     *
     * @return  self
     */ 
    public function setProdutos_id($produtos_id)
    {
        $this->produtos_id = $produtos_id;

        return $this;
    }

    /**
     * Get the value of pedidos_id
     */ 
    public function getPedidos_id()
    {
        return $this->pedidos_id;
    }

    /** 
     * Set the value of pedidos_id
     *
     * @return  self
     */ 
    public function setPedidos_id($pedidos_id)
    {
        $this->pedidos_id = $pedidos_id;

        return $this;
    }
}
