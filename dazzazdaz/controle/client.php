<?php



	function connexion($nom,$mdp)  {
		
		
		$nom=isset($_POST['nom'])?trim($_POST['nom']):''; // trim pour enlever les espaces avant et apres
		$mdp=isset($_POST['mdp'])?trim($_POST['mdp']):'';
		if (count($_POST) == 0) require("vue/client/connexion.tpl");
		
		else {
			
			
			
			
		}
	}
	
	function deconnexion(){
		
		
	}
	
	function inscription($nom,$mdp,$mail,$adresse){
		
		
	}
	
	function afficheLocations(){
		
	}
	
	function specifierDates($dateDeb,$dateFin) {
		
	}