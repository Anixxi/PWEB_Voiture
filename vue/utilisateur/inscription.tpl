
<html>
	<head>
		<meta charset="utf-8">
		<title>TP1 contacts - mvc - formulaire d'inscription</title>
		<link rel="stylesheet" href="vue/styleCSS/utilisateur.css"/>
		<!-- <script src="script.js"></script> -->
	</head>
	<body>
		<div class="conteneur">
			
			
			<p>
				Inscription
			</p>
			
			
			<form action="index.php?controle=loueur&action=inscription" method="post">
				<label>nom :</label>
				<input name="nomI" class="nomI" value="<?php echo $nomI ?>" /> 
				<label>mail :</label>
				<input name="emailI" class="emailI" value="<?php echo $emailI ?>" /> 
				<label>mdp :</label>
				<input name="mdp" class="mdp" value="<?php echo $mdp ?>" /> 
                <label>adresseE :</label>
				<input name="adresseE" class="adresseE" value="<?php echo $adresseE ?>" /> 
				<input type= "submit" value= "ok" /> 				
			</form>
		
			<a href = "index.php?controle=utilisateur&action=ident" > Retour a la page de connexion </a>
		</div>
		<div id ="m"> <?php echo $msg; ?> </div>
	</body>
</html>