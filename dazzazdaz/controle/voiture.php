<?php


	function init() {
		require("./modele/voitureBD.php");
		$Voiture = voitures();
		require("vue/voiture/accueil");
		
	}