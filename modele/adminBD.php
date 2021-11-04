<?php
	function verif_admin($nom,$mdp) {
			require('modele/connectBD.php');
		//$pdo est défini dans ce fichier
	 
		
		$sql="SELECT * FROM `admin` WHERE nom=:nom AND mdp=:mdp";
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':nom', $nom);
			$commande->bindParam(':mdp', $mdp);
			
			$bool = $commande->execute();
			if ($bool) {
				$resultat = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements
			}
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
			die(); // On arrête tout.
		}
		if (count($resultat) == 0) {
			return false; 
		}
		else {
			return true;
		}
	}
?>