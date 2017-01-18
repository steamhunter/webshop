<?php

?>
<div id="header">
	<div id="Search">
		<form method="post" action="">
			<input type="text" name="Search" value="Search..." id="Search"> 
		</form>
	</div>
	<?php
	if(isset($_SESSION['username'])){
		?>
		<div id="LoginRegister">
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
	<div id="Logo">
	logo
	</div>
	<div id="basket">
		<div id="loginContainer">
                <a href="#" id="loginButton"><span>kosár</span><em></em></a>
                <div style="clear:both"></div>
                <div id="loginBox">                
                    <form id="loginForm" method="post" action="../payment.php">
                        <fieldset id="body">
                           <?php
							$cart=Cart::GetCartForHoover($items);
							print($cart);
							?>
                        </fieldset>
                    </form>
                </div>
            </div>
	</div>
</div>