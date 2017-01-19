<?php
if(!isset($_SESSION['cart']))
{
	$_SESSION['cart']=array();
}
?>
<div id="sidebar_left">
Kategóriák
<br><a href='index.php?filter=none'>főoldal</a>
<?php
$db=DB::getInstance();
$db->connect();
$categories=$db->query("SELECT * FROM `categories`");
for($i=0;$i<count($categories);$i++)
{
	$category=$categories[$i]['name'];
	$catid=$categories[$i]['id'];
	print "<br><a href='index.php?filter=$catid'>$category</a>";
}
?>
</div>
<div id="sidebar_right">
Quickview
<?php
print("<br>");
print(Cart::GetCartForQuickWiev($itemsall));
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
