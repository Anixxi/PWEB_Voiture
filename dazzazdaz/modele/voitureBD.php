<?php

function voitures() {
		require ("Modele/connectBD.php") ; 
		$sql="SELECT * FROM voiture v
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