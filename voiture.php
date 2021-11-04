<?php


	function init() {
		require("./modele/voitureBD.php");
		
		$Voiture = voitures();
        //var_dump($Voiture);
        //die();
		require("vue/utilisateur/init.tpl");
		
	}