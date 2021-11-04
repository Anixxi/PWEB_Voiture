<html>
	<head>
		<meta charset="utf-8">
		<title>TP1 contacts - mvc - formulaire de connexion</title>
		<link rel="stylesheet" href="vue/styleCSS/utilisateur.css"/>
		<!-- <script src="script.js"></script> -->
	</head>
	<body>
		<div class="conteneur">
			
			
			<p>
				Connexion
			</p>
			
			
			<form action="index.php?controle=client&action=connexion" method="post">
				<label>nom :</label>
				<input name="nom" class="nom" value="<?php echo $nom ?>" /> 
				
				<label>mdp :</label>
				<input name="mdp" class="mdp" value="<?php echo $mdp ?>" /> 
               
				<input type= "submit" value= "ok" /> 				
			</form>
		
			<a href = "index.php?controle=voiture&action=init" > Retour a l'accueil </a>
		</div>
		<div id ="m"> <?php echo $msg; ?> </div>
	</body>
</html>