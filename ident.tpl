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
		<nav>
			<?php require ("vue/menu.tpl");?>
		</nav>
		<div id="main">
			<?php
				if ($Voiture != false) {
					echo ("<h2 style='color:blue'> Voici nos voiture :</h2>");
					echo ('<table>');
					echo ('<tr><th> NOM </th> <th> MODELE </th> <th> CARACTERITIQUES </th></tr>'); 	
					foreach ($Voiture as $v) {
						echo "<tr class='voiture'>";
						echo ("<td>" . $v['nom'] . "</td>");
						echo ("<td>" . $v['modele'] . "</td>"); 
						echo ("<td>" . $v['caract'] . "</td>"); 
						echo ("<td>" . "<img src=\"popo.jpg\">" . $v['img'] . "</td>"); 
						echo "</tr>\n";
					}
					echo ('</table>');
				}
				else echo ('pas de voiture');
			?>
		</div>
	</body>
</html>
