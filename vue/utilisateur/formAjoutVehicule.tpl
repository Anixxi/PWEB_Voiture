

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

			<form action="index.php?controle=voiture&action=ajouterV" method="POST" enctype="multipart/form-data">
		        <label for="file">Fichier :</label>
		        <input type="file" name="file">
		        <br> 
		        <label>type :</label>
				<input name="type" class="type" /> 
				<br>
				<label>nombre :</label>
				<input name="nb" class="nb" /> 
				<br>
				<label>carcteristique :</label>
				<input name="caract" class="caract" /> 
				<br>
				<label>prix :</label>
				<input name="tarif" class="tarif" /> 
		        <button type="submit">Enregistrer</button>
				
		    </form>
		     
		    <!--
		    <form action="index.php?controle=voiture&action=ajouterV" method="post">
				<label>type :</label>
				<input name="type" class="type" /> 

				<button type="submit">Enregistrer</button>
			</form>
			-->
		<div id="main">
		    
		</div>
		
	</body>
</html>

