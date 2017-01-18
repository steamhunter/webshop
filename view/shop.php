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
print("<br>");
print(Cart::GetCartForQuickWiev($items));
?>
</div>
<div id="content">
<?php
for($i=0;$i<count($items);$i++)
{
	
		?>
		<div class="shopitem">
			<div id="itemimage">
			<?php $image=$items[$i]['image']?>
			<img src=<?=$image?>></img>
			</div>
			<div id="itemname">
			<?=$items[$i]['name']?>
			</div>
			<div id="itemAddToCart">
			<form method="post" action="" id="itemCartForm">
			<input type="submit" name="addtocart" value="kosárba">
			<input type="hidden" name="itemid" value="<?=$items[$i]['id']?>">
			</form>
			<div id="itemprice"><?php print($items[$i]['price']." Ft")?></div>
			</div>
		</div>
		<?php
}
?>
</div>
