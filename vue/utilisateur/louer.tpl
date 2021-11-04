<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>get a car now</title>
		<link rel="stylesheet" href="./vue/styleCSS/style.css"/>
		<link rel="stylesheet" href="./vue/styleCSS/voiture.css"/>
		<!-- <script src="script.js"></script> -->
	</head>
	<body>
		<a href="index.php?controle=client&action=menu" >Retour au menu</a>

		<div id="main">
		<p>Formulaire de location du véhicule :</p>
		
		 <?php
			 echo("<form action=\"index.php?controle=client&action=louer&id=".$_GET['id']." \" method=\"post\"> ") ;
				echo("<label>Date de début :</label>");
				echo("<input name=\"dateD\" class=\"dateD\" type=\"date\" />" );
				echo("<label>Date de fin :</label>");
				echo("<input name=\"dateF\" class=\"dateF\" type=\"date\" /> ");
			echo(	"<input type= \"submit\" value= \"ok\" />" );				
			echo("</form>"); 
			?> 
			
		
		</div>
	</body>
</html>