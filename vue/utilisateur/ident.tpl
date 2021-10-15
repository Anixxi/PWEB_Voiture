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
		<a href="index.php?controle=loueur&action=inscription" >Voulez-vous s'incrire ?</a>

		<div id="main">
			<?php
				//var_dump($Voiture);
				//die();
				if ($Voiture != false) {
					echo ("<h2 style='color:blue'> Voici nos voiture :</h2>");
					echo ('<table>');
					echo ('<tr><th> NOM </th> <th> MODELE </th> <th> CARACTERITIQUES </th></tr>'); 	
					foreach ($Voiture as $v) {
						echo "<tr class='voiture'>";
						echo ("<td>" . $v['id'] . "</td>");
						echo ("<td>" . $v['type'] . "</td>"); 
						echo ("<td>" . $v['caract'] . "</td>"); 
						echo ("<td>" . "<img src=\"./photos/" . $v['photo']. ".jfif\">" . "</td>"); 
						
						echo "</tr>\n";
					}
					echo ('</table>');
				}
				//else echo ('pas de voiture');


			?>
		</div>
	</body>
</html>
