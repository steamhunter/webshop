<div>
<div id="cartList">
<?php
print Cart::GetCartItems($items);
?>
<form method="post">
<input type="submit" name="finishcart" value="fizetés">
</form>
</div>
<?php
//$_SESSION['cart']=null;
//<a href="../index.php">viszatérés a vásárláshoz</a>
?>
</div>