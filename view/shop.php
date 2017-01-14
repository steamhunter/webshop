<?php
if(!isset($_SESSION['cart']))
{
	$_SESSION['cart']=array();
}
?>
<div id="sidebar_left">
Kategóriák
</div>
<div id="sidebar_right">
Quickview
<?php
if(isset($_SESSION['username']))
{
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
}
?>
</div>
<div id="content">
<?php
for($i=0;$i<count($items);$i++)
{
	
		?>
		<div class="shopitem">
			<div id="itemimage">
			</div>
			<div id="itemname">
			<?=$items[$i]['name']?>
			</div>
			<div id="itemAddToCart">
			<form method="post" action="">
			<input type="submit" name="addtocart" value="kosárba">
			<input type="hidden" name="itemid" value="<?=$items[$i]['id']?>">
			</form>
			</div>
		</div>
		<?php
}
?>
</div>
