<?php

class Produto {

    private $id = "";
    private $nome = "";
    private $descricao = "";
    private $tamanho = "";        
    private $tipo_tamanho = "";
    private $preco = "";
    private $marca = "";
    private $cor = "";
    private $categoria = "";
    private $subcategoria = "";
    

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
     * Get the value of nome
     */ 
    public function getNome()
    {
        return $this->nome;
    }

    /**
     * Set the value of nome
     *
     * @return  self
     */ 
    public function setNome($nome)
    {
        $this->nome = $nome;

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
     * Get the value of tamanho
     */ 
    public function getTamanho()
    {
        return $this->tamanho;
    }

    /**
     * Set the value of tamanho
     *
     * @return  self
     */ 
    public function setTamanho($tamanho)
    {
        $this->tamanho = $tamanho;

        return $this;
    }

    /**
     * Get the value of tipo_tamanho
     */ 
    public function getTipo_tamanho()
    {
        return $this->tipo_tamanho;
    }

    /**
     * Set the value of tipo_tamanho
     *
     * @return  self
     */ 
    public function setTipo_tamanho($tipo_tamanho)
    {
        $this->tipo_tamanho = $tipo_tamanho;

        return $this;
    }

    /**
     * Get the value of preco
     */ 
    public function getPreco()
    {
        return $this->preco;
    }

    /**
     * Set the value of preco
     *
     * @return  self
     */ 
    public function setPreco($preco)
    {
        $this->preco = $preco;

        return $this;
    }

    /**
     * Get the value of marca
     */ 
    public function getMarca()
    {
        return $this->marca;
    }

    /**
     * Set the value of marca
     *
     * @return  self
     */ 
    public function setMarca($marca)
    {
        $this->marca = $marca;

        return $this;
    }

    /**
     * Get the value of cor
     */ 
    public function getCor()
    {
        return $this->cor;
    }

    /**
     * Set the value of cor
     *
     * @return  self
     */ 
    public function setCor($cor)
    {
        $this->cor = $cor;

        return $this;
    }

    /**
     * Get the value of categoria
     */ 
    public function getCategoria()
    {
        return $this->categoria;
    }

    /**
     * Set the value of categoria
     *
     * @return  self
     */ 
    public function setCategoria($categoria)
    {
        $this->categoria = $categoria;

        return $this;
    }

    /**
     * Get the value of subcategoria
     */ 
    public function getSubcategoria()
    {
        return $this->subcategoria;
    }

    /**
     * Set the value of subcategoria
     *
     * @return  self
     */ 
    public function setSubcategoria($subcategoria)
    {
        $this->subcategoria = $subcategoria;

        return $this;
    }
}
