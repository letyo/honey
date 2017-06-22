<?php
	include_once "includes/router.php";
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>The Best Honey</title>
	<link type="text/css" rel="stylesheet" href="css/main.css"/>
</head>
<body>
	
	<div class="head">
		<a class="dropdown" href="home">Home</a>
		<div class="dropdown">
			<h6>Honey</h6>
			<div class="dropdown-content">
				<a href="honey">About the honey</a>
				<a href="benefits">Benefits of the honey</a>
				<a href="recipes">Recipes</a>
			</div>
		</div>
		<a class="headchen" href="products">Products</a>
		<a class="headchen" href="contact">Contact</a>
	</div>

	<?php 
		load_template($page);
	?>

    <div class="bottom">
    </div>

	<div class="footer">
    </div>	

</body>
</html>