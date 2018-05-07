<?php  
 //filter.php  
 if(isset($_POST["from_date"], $_POST["to_date"]))  
 {  
      $conn = mysqli_connect("localhost", "root", "", "pos");  
      $output = "";  
      $query = "
           SELECT * FROM salesTable
           WHERE sales_date BETWEEN '".$_POST["from_date"]."' AND '".$_POST["to_date"]."'  
      ";  
      $result = mysqli_query($conn, $query);  
      $output .= '
           <table width="100%" class="table table-striped table-bordered table-hover" id="salesTable">  
                <tr>  
                     <th>Sales Date</th>  
                     <th>Customer</th>  
                     <th>Total Purchase</th>  
                     <th>Action</th>  
                </tr>  
      ';  
      if(mysqli_num_rows($result) > 0)  
      {  
           while($row = mysqli_fetch_array($result))  
           {  
                $output .= '  

                     <tr>  
                          <td>'. $row["salesid"] .'</td>  
                          <td>'. $row["userid"] .'</td>  
                          <td>'. $row["sales_total"] .'</td>  
                          <td>$ '. $row["sales_date"] .'</td>  
                     </tr>  
                ';  
           }  
      }  
      else  
      {  
           $output .= '  
                <tr>  
                     <td colspan="5">No Order Found</td>  
                </tr>  
           ';  
      }  
      $output .= '</table>';  
      echo $output;  
 }  
 ?>