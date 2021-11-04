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
			<?php
				//var_dump($Voiture);
				//die();
				if ($Voiture != false) {
					echo ("<h2 style='color:blue'> Voici les vehicules actuellement disponibles :</h2>");
					echo ('<table>');
					echo ('<tr> <th> ID </th> <th> MODELE </th> </tr>'); 	
					foreach ($Voiture as $v) {
						echo "<tr class='voiture'>";
						echo ("<td>" . $v['id'] . "</td>"); 
						echo ("<td>" . $v['type'] . "</td>"); 	
						echo ("<td>" . " <button id =". $v['id'] . " type=\"button\" onclick = \"location.href='index.php?controle=client&action=louer&id=". $v['id']."'\">Louer ce vehicule</button>" . "</td>"); 	
						
						echo "</tr>\n";
					}
					
					echo ('</table>');
				}
				else echo ('pas de voiture');


			?>
		</div>
	</body>
</html>
