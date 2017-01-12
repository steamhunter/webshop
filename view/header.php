<div id="header">
	<div id="Search">
		<form method="post" action="">
			<input type="text" name="Search" value="Search..." id="Search"> 
		</form>
	</div>
	<div id="Logo">
	</div>
	<?php
	if(isset($_SESSION['username'])){
		?>
		<div>
		<?=$_SESSION['username']?>
		<form method="post" action="../controler/logout.php">
		<input type="submit" name="logout" value="kijelentkezés">
		</form>
		</div>
		<?php
	}else{?>

		<div id="LoginRegister">
			<form method="post" action="../controler/login.php">
				<input type="text" name="username">
				<input type="password" name="password">
				<input type="submit" name="login" value="bejelentkezés">
			</form>
		</div>
	<?php
	}
	?>
	<div id="basket">
		basket
	</div>
</div>