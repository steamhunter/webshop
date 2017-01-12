<div id="sidebar_left">
Kategóriák
</div>
<div id="sidebar_right">
Quickview
</div>
<div id="content">
<?php
$db=DB::getInstance();
$db->connect();
$items=$db->query("select * from products");
for($i=0;$i<count($items);$i++)
{
	
		?>
		<div class="shopitem">
			<div id="itemimage">
			</div>
			<div id="itemname">
			<?=$items[$i]['name']?>
			</div>
		</div>
		<?php
}
?>
</div>
