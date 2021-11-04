<?php

	function connexion($nom,$mdp) {
		
	}
	
	function deconnexion() {
		
	}
	
	function inscription(){
			$nomI=isset($_POST['nomI'])?trim($_POST['nomI']):''; // trim pour enlever les espaces avant et apres
			$mdp=isset($_POST['mdp'])?trim($_POST['mdp']):'';
			$emailI=isset($_POST['emailI'])?trim($_POST['emailI']):''; // trim pour enlever les espaces avant et apres
			$adresseE=isset($_POST['adresseE'])?trim($_POST['adresseE']):'';
			$msg="";
			
			if (count($_POST)== 0) require("vue/utilisateur/inscription.tpl"); 
	
			else {
				if($nomI =='' || $mdp =='') {
					$msg = "inscription échouée : précisez au minimum un nom et un numéro";
					require("vue/utilisateur/insription.tpl");
				}
				else {
					require ("./modele/loueurBD.php");
					
					if(inscription_bd($nomI,$mdp,$emailI,$adresseE))  {		
						$nexturl = "index.php?controle=loueur&action=ident";
						header ("Location:" . $nexturl);
						$msg = "inscription réussie";
					}
					
					else {
						$msg = "inscription échouée : cet utilisateur existe déjà";
						require("vue/utilisateur/inscription.tpl");
					}
				}
			}
	}
	
	
	