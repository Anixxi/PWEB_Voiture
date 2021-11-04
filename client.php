<?php



	function connexion(){
	require ("./modele/clientBD.php");
		
		$nom=isset($_POST['nom'])?trim($_POST['nom']):''; // trim pour enlever les espaces avant et apres
		$mdp=isset($_POST['mdp'])?trim($_POST['mdp']):'';
		$msg="";
		
		
		
		if (count($_POST) == 0) require("vue/utilisateur/connexion.tpl");
		
		else {
			
			if (verif_bd($nom,$mdp,$profil)) {
				$_SESSION['profil'] = $profil;	
				$nexturl = "index.php?controle=client&action=menu";
				header ("Location:" . $nexturl);
				$msg = "connexion réussie";
			}
			else {
				$msg = "connexion échouée";
				require("./vue/utilisateur/connexion.tpl");
			}
			
			
		}
	}
	
	function deconnexion(){
		session_destroy();
		$nexturl = "index.php?controle=voiture&action=init";
		header ("Location:" . $nexturl);
	}
	
	function test() {
		var_dump($_SESSION);die();
	}
	
	function inscription(){
			$nomI=isset($_POST['nomI'])?trim($_POST['nomI']):''; // trim pour enlever les espaces avant et apres
			$mdp=isset($_POST['mdp'])?trim($_POST['mdp']):'';
			$emailI=isset($_POST['emailI'])?trim($_POST['emailI']):''; // trim pour enlever les espaces avant et apres
			$adresseE=isset($_POST['adresseE'])?trim($_POST['adresseE']):'';
			$msg="";
			
			if (count($_POST)== 0) require("vue/utilisateur/inscriptionClient.tpl"); 
	
			else {
				if($nomI =='' || $mdp =='') {
					$msg = "inscription échouée : précisez au minimum un nom et un numéro";
					require("vue/utilisateur/insriptionClient.tpl");
				}
				else {
					require ("./modele/clientBD.php");
					
					if(inscription_bd($nomI,$emailI,$mdp,$adresseE))  {	
						if (verif_bd($nomI,$mdp,$profil)) {
							$_SESSION['profil'] = $profil;	
							$nexturl = "index.php?controle=client&action=menu";
							header ("Location:" . $nexturl);
							$msg = "inscription réussie";
						}
						else {
							$msg = "inscription réussie,connexion échouée";
							var_dump($msg); die();
						}
					}
					
					else {
						$msg = "inscription échouée : cet utilisateur existe déjà";
						require("vue/utilisateur/inscriptionClient.tpl");
					}
				}
			}
	}
	
	function afficheLocations(){
		require("./modele/voitureBD.php");
		$Voiture = voituresLoues();
		
		require("vue/utilisateur/vehiculesLoues.tpl");
	}
	
	function afficheDisponibles(){
		require("./modele/voitureBD.php");
		$Voiture = voituresDispos();
	
		
		require("vue/utilisateur/vehiculesDispos.tpl");
	}
	
	function louer() {
		if(!isset($_POST['dateD'])) {
			require("vue/utilisateur/louer.tpl");
		}
		else {
			if($_POST['dateD'] == "") {
				require("vue/utilisateur/louer.tpl");
				}
				
				else {
					require("./modele/voitureBD.php");
					nouvelleLocation($_GET['id']);
					$nexturl = "index.php?controle=client&action=menu";
					header ("Location:" . $nexturl);
					
				}
		}
	}
	function specifierDates($dateDeb,$dateFin) {
		
	}
	
	function menu() {
		require("vue/utilisateur/menuClient.tpl");		
	}