<?php include "header.php"; 
if($_SESSION["user_role"] == '0') {
  header("Location: {$hostname}/admin/post.php");
}
?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
             <form action="user-table.php " method="GET"  style="padding: 0; margin:0;">
              <div class="col-md-4">
                  <h1 class="admin-heading">All Users</h1>
              </div>
              
              <div class="col-md-2">
                  <input  class="add-new btn btn-white" type="date" name = "from_date" value="<?php if(isset($_GET['from_date'])){ echo $_GET['from_date'];}else{} ?>" class="add-new" > </input>
              </div>
              <div class="col-md-2">
              <input class="add-new btn btn-white" type="date" name = "to_date" <?php if(isset($_GET['to_date'])){ echo $_GET['to_date'];}else{} ?>  class="add-new" > </input>     
              </div>
              <div class="col-md-2">
                <button type="submit_date" class="add-new btn btn-white">Filter</button>
                  
              </div>
              <div class="col-md-2">
                  <a class="add-new btn btn-white" href="add-user.php">add user</a>
              </div>
             </form>
             
                 
                
                     


             

            


              <div class="col-md-12">
                <?php
                include "config.php";
                $limit = 4;
 
                if(isset($_GET['page'])){
                  $page = $_GET['page'];
                }else{
                  $page = 1;
                }
                $offset = ($page - 1) * $limit;

                $sql = "SELECT * FROM user ORDER BY date DESC LIMIT {$offset},{$limit}";
                $result = mysqli_query($conn,$sql) or die("Query Failed.");
                if (mysqli_num_rows($result)>0){

                ?>
                  <table class="content-table">
                      <thead>
                          <th>S.No.</th>
                          <th>Full Name</th>
                          <th>User Name</th>
                          <th>Role</th>
                          <th>Reg. date</th>
                          <th>Edit</th>
                          <th>Delete</th>

                      </thead>
                      <tbody>
                        <?php
                        while($row = mysqli_fetch_assoc($result)){
                        ?>
                        
                          <tr>
                              <td class='id'><?php echo $row['user_id'];?> </td>
                              <td><?php echo $row['first_name'] ." ".$row['last_name'];?></td>
                              <td><?php echo $row['username']; ?></td>
                              <td><?php 
                              if($row['role'] == 1){
                                echo  "admin";
                              }else{
                                echo  "normal";
                              }
                                ?></td>
                              <td><?php echo $row["date"]; ?></td>
                              <td class='edit'><a href='update-user.php?id=<?php echo $row["user_id"]; ?>'><i class='fa fa-edit'></i></a></td>
                              <td class='delete'><a href='delete-user.php?id=<?php echo $row["user_id"]; ?>'><i class='fa fa-trash-o'></i></a></td>
                          </tr>
                          <?php
                          }
                           ?>
                      </tbody>
                  </table>
                <?php
                }else{
                  echo "<h3>No Result Found<h3>";
                }

                //  show pagination 
                
                $sql1 = "SELECT * FROM user";
                $result1 = mysqli_query($conn,$sql1) or die ("query failed");

                if(mysqli_num_rows($result1)>0){
                  $total_records = mysqli_num_rows($result1);  
                  $total_page = ceil($total_records / $limit );

                  echo '<ul class="pagination admin-pagination">';
                  if($page>1){
                    echo '<li><a href ="users.php?page='.($page-1).'">prev</a></li>';
                  }

                  
                  for ($i = 1; $i <= $total_page; $i++) {
                    if($i == $page){
                      $active = "active";
                    }else{
                      $active = "";
                    }
                    echo '<li class=" '.$active.'"><a href = "users.php?page='.$i.'">'.$i.'</a></li>';

                  }
                  if($total_page > $page){
                    echo '<li><a href ="users.php?page='.($page+1).'">next</a></li>';
                  }
                  
                  echo '</ul>';
                }      
                ?>       
                      
              </div>
          </div>
      </div>
  </div>
<?php include "header.php"; ?>
