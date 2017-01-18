<?php
class Cart
{
	public static function GetCartForHoover($items){
		if(isset($_SESSION['username']))
		{
			$returnstring="";	
			if(count($_SESSION['cart'])==0)
			{
				return "a kosár üres";
					
			}else{
			$fullprice=0;
				for($i=0;$i<count($items);$i++)
				{
					for($j=0;$j<count($_SESSION['cart']);$j++)
					{
					
						if($items[$i]['id']==$_SESSION['cart'][$j])
						{
							$returnstring=$returnstring."<br>";
							$returnstring=$returnstring.$items[$i]['name']." ".$items[$i]["price"]." Ft";
							$fullprice+=$items[$i]["price"];
						}
					}
				}	
				$returnstring=$returnstring."<br>"."Összesen : ".$fullprice." Ft";
				$returnstring=$returnstring."<input type=\"submit\" name=\"endshop\" value=\"fizetés\">";
				return $returnstring;
									
			}
		}else{
			return "A kosár használatához jelentkezzbe vagy regisztrálj";
		}
	}
	public static function GetCArtForQuickWiev($items){
		if(isset($_SESSION['username']))
		{
			$returnstring="";	
			if(count($_SESSION['cart'])==0)
			{
				return "a kosár üres";
					
			}else{
				$fullprice=0;				
				for($i=0;$i<count($items);$i++)
				{
					for($j=0;$j<count($_SESSION['cart']);$j++)
					{
					
						if($items[$i]['id']==$_SESSION['cart'][$j])
						{
							$returnstring=$returnstring."<br>";
							$returnstring=$returnstring.$items[$i]['name'];
							$fullprice+=$items[$i]["price"];
						}
					}
				}
				$returnstring=$returnstring."<br>"."Összesen : ".$fullprice." Ft";
				return $returnstring;
									
			}
		}else{
		}
	}
	public static function GetCartItems($items)
	{
		$returnstring="";	
			
				$fullprice=0;				
				for($i=0;$i<count($items);$i++)
				{
					for($j=0;$j<count($_SESSION['cart']);$j++)
					{
					
						if($items[$i]['id']==$_SESSION['cart'][$j])
						{
							$returnstring=$returnstring."<br>";
							$returnstring=$returnstring.$items[$i]['name'];
							$returnstring=$returnstring." ".$items[$i]['price']." Ft";
							$fullprice+=$items[$i]["price"];
						}
					}
				}
				$returnstring=$returnstring."<br>"."<div id='cartFullPrice'>Összesen : ".$fullprice." Ft</div>";
				return $returnstring;
									

	}
}
?>