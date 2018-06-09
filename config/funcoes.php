<?php

class Funcoes {

    public function __construct() {
        //$this->conecta();
    }

	/**
     * REMOVE CODIGOS MALICIOSOS DE UMA STRING
     */
	public function removerCodigoMalicioso($comSeguranca) {
	    $comSeguranca = addslashes($comSeguranca);
	    $comSeguranca = htmlspecialchars($comSeguranca);
	    $comSeguranca = str_replace(" SELECT ","",$comSeguranca);
	    $comSeguranca = str_replace(" FROM ","",$comSeguranca);
	    $comSeguranca = str_replace(" WHERE ","",$comSeguranca);
	    $comSeguranca = str_replace(" INSERT ","",$comSeguranca);
	    $comSeguranca = str_replace(" UPDATE ","",$comSeguranca);
	    $comSeguranca = str_replace(" DELETE ","",$comSeguranca);
	    $comSeguranca = str_replace(" DROP ","",$comSeguranca);
	    $comSeguranca = str_replace(" DATABASE ","",$comSeguranca);
	    $comSeguranca = str_replace(" AND ","",$comSeguranca);
	    $comSeguranca = str_replace(" OR ","",$comSeguranca);

	    $comSeguranca = str_replace(" select ","",$comSeguranca);
	    $comSeguranca = str_replace(" from ","",$comSeguranca);
	    $comSeguranca = str_replace(" where ","",$comSeguranca);
	    $comSeguranca = str_replace(" insert ","",$comSeguranca);
	    $comSeguranca = str_replace(" update ","",$comSeguranca);
	    $comSeguranca = str_replace(" delet ","",$comSeguranca);
	    $comSeguranca = str_replace(" drop ","",$comSeguranca);
	    $comSeguranca = str_replace(" database ","",$comSeguranca);
	    $comSeguranca = str_replace(" and ","",$comSeguranca);
	    $comSeguranca = str_replace(" or ","",$comSeguranca);
	    return $comSeguranca;
	}
}
