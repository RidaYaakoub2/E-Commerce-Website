<?php
	 require_once('../../DAL/DAL.class.php');
	 class Cart
	 {
		
		 public function GetCattodropdown()
		 {
			$sql="Select * from categories where cat_status='1' order by cat_id ASC ";
	    
		    $db= new DAL();
		
		    $rows= $db->getData($sql);
		
		    return $rows;	
		 }
		 public function GetproductbyId($id)
	       {
		    $sql="Select * from products where id=$id";
	    
		    $db= new DAL();
		
		    $rows= $db->getData($sql);
		
		    return $rows;	
	       }
		 public function OrderNow($Customer_id,$status)
		 {
			 $sql="INSERT INTO `ordered` (`customer_id`, `status`) VALUES ('$Customer_id','$status')";
			 
			 $db= new DAL();
		 
		    $rows= $db->getData($sql);
		
		    return $rows;	
			 
		 }
		 public function Order_details($product_id,$product_qty)
		 {

			 $sql="INSERT INTO `ordered_details` (`ordered_id`,`product_id`, `product_quantity`) VALUES ((SELECT MAX(id) FROM ordered),'$product_id', '$product_qty');";
			 
			 $db= new DAL();
		 
		    $rows= $db->getData($sql);
		
		    return $rows;	
			 
		 }
		 
		 
		 
		 
	 }
	 
	 
	 
	 
	 ?>