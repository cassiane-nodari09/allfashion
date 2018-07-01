<?php

class Pedido {

    private $id = "";
    private $data_ini = "";
    private $data_fim = "";
    private $validade = "";        
    private $usuarios_id = "";        
    private $status_id = "";        
    private $cartoes_pagamento = "";        
    private $enderecos_id = "";

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
     * Get the value of data_ini
     */ 
    public function getData_ini()
    {
        return $this->data_ini;
    }

    /**
     * Set the value of data_ini
     *
     * @return  self
     */ 
    public function setData_ini($data_ini)
    {
        $this->data_ini = $data_ini;

        return $this;
    }

    /**
     * Get the value of data_fim
     */ 
    public function getData_fim()
    {
        return $this->data_fim;
    }

    /**
     * Set the value of data_fim
     *
     * @return  self
     */ 
    public function setData_fim($data_fim)
    {
        $this->data_fim = $data_fim;

        return $this;
    }

    /**
     * Get the value of validade
     */ 
    public function getValidade()
    {
        return $this->validade;
    }

    /**
     * Set the value of validade
     *
     * @return  self
     */ 
    public function setValidade($validade)
    {
        $this->validade = $validade;

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

    /**
     * Get the value of status_id
     */ 
    public function getStatus_id()
    {
        return $this->status_id;
    }

    /**
     * Set the value of status_id
     *
     * @return  self
     */ 
    public function setStatus_id($status_id)
    {
        $this->status_id = $status_id;

        return $this;
    }

    /**
     * Get the value of cartoes_pagamento
     */ 
    public function getCartoes_pagamento()
    {
        return $this->cartoes_pagamento;
    }

    /**
     * Set the value of cartoes_pagamento
     *
     * @return  self
     */ 
    public function setCartoes_pagamento($cartoes_pagamento)
    {
        $this->cartoes_pagamento = $cartoes_pagamento;

        return $this;
    }

    /**
     * Get the value of enderecos_id
     */ 
    public function getEnderecos_id()
    {
        return $this->enderecos_id;
    }

    /**
     * Set the value of enderecos_id
     *
     * @return  self
     */ 
    public function setEnderecos_id($enderecos_id)
    {
        $this->enderecos_id = $enderecos_id;

        return $this;
    }
}
