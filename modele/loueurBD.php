<?php

function inscription_bd($nomI,$emailI,$mdp,$adresseE) {
		require('modele/connectBD.php');
		$sql="SELECT * FROM `client` WHERE nom=:nom AND mdp = :mdp";
		
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':nom', $nomI);
			$commande->bindParam(':mdp', $mdp);
			$bool = $commande->execute();
			$rechercheP = $commande->fetchAll();
			
			if(count($rechercheP) == 0) {
					$sqlIns = "INSERT INTO client(id,nom,mdp,email,adresseE) VALUES (NULL,'$nomI','$mdp','$emailI','$adresseE')";
					/*$idm = "SELECT MAX(id) FROM client LIMIT 1";
					try {
						$max = $pdo->prepare($idm);
						$rechercheInd = $max->execute();
						$indmax = $max->fetch();

					}*/
					
					/*catch (PDOException $e) {
						echo utf8_encode("Echec d'inscriptionBD : " . $e->getMessage() . "\n");
						die(); // On arrête tout.
					}*/
					
					
					//$id = intval($indmax[0]) + 1;
					
					$cmd = $pdo->prepare($sqlIns);
					
					//$cmd->bindParam(':id', $id);
					$test = $cmd->execute();
					return true;
			}
			return false;
		}
		
		catch (PDOException $e) {
			echo utf8_encode("Echec d'inscriptionBD : " . $e->getMessage() . "\n");
			die(); // On arrête tout.
		}
	}