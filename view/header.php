<?php
if(isset($post)&&isset($_SESSION['username']))
{
	$_SESSION['cart'][]=$post['itemid'];
}
$db=DB::getInstance();
$db->connect();
$items=$db->query("select * from products");
?>
<div id="header">
	<div id="Search">
		<form method="post" action="">
			<input type="text" name="Search" value="Search..." id="Search"> 
		</form>
	</div>
	<div id="Logo">
	logo
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
	<div id="basket">
		<div id="loginContainer">
                <a href="#" id="loginButton"><span>kosár</span><em></em></a>
                <div style="clear:both"></div>
                <div id="loginBox">                
                    <form id="loginForm" method="post" action="../payment.php">
                        <fieldset id="body">
                           <?php
							if(isset($_SESSION['username']))
							{
								
								if(count($_SESSION['cart'])==0)
								{
									print("a kosár üres");
								}else{
								
									for($i=0;$i<count($items);$i++)
									{
										for($j=0;$j<count($_SESSION['cart']);$j++)
										{
										
											if($items[$i]['id']==$_SESSION['cart'][$j])
											{
												print"<br>";
												print($items[$i]['name']);
											}
										}
									}
									
									?>
									
									<input type="submit" name="endshop" value="fizetés">
									<?php
								}
							}else{
								print "A kosár használatához jelentkezzbe vagy regisztrálj";
							}
							?>
                        </fieldset>
                    </form>
                </div>
            </div>
	</div>
</div>