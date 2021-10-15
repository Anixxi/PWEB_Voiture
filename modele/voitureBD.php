<?php

function voitures() {
		require ("Modele/connectBD.php") ; 
		$sql="SELECT * FROM vehicule v
		LIMIT 0,30"; // LIMIT ne marche pas en MS SQL SERVER
		try {
			$commande = $pdo->prepare($sql);
			$bool = $commande->execute();
			$V= array();
			if ($bool) {
				while ($v = $commande->fetch()) {
					$V[] = $v; //stockage dans $C des enregistrements sélectionnés
				}	
			}
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
			die(); // On arrête tout.
		}
		return $V;
	}

    function ins() {
		$nomI=isset($_POST['nomI'])?trim($_POST['nomI']):''; // trim pour enlever les espaces avant et apres
		$prenomI=isset($_POST['prenomI'])?trim($_POST['prenomI']):'';
		$emailI=isset($_POST['emailI'])?trim($_POST['emailI']):''; // trim pour enlever les espaces avant et apres
		$numI=isset($_POST['numI'])?trim($_POST['numI']):'';
		$msg="";
		
		if (count($_POST)== 0) require("vue/utilisateur/ins.tpl"); 

		else {
			if($nomI =='' || $numI =='') {
				$msg = "inscription échouée : précisez au minimum un nom et un numéro";
				require("vue/utilisateur/ins.tpl");
			}
			else {
				require ("./modele/utilisateurBD.php");
				
				if(inscription_bd($nomI,$prenomI,$emailI,$numI))  {		
					$nexturl = "index.php?controle=utilisateur&action=ident";
					header ("Location:" . $nexturl);
					$msg = "inscription réussie";
				}
				
				else {
					$msg = "inscription échouée : cet utilisateur existe déjà";
					require("vue/utilisateur/ins.tpl");
				}
			}
		}
	}