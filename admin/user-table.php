
<?php include "header.php"; ?>
    









<div id="admin-content">
    <div class="container">
        <div class="row">
            <form action="export_data.php" method="GET" style="padding: 0; margin:0;">
                <div class="col-md-4">
                    <h1 class="admin-heading">All Users</h1>
                </div>

                <div class="col-md-2">
                    <input class="add-new btn btn-white" type="date" name="from_date" value="<?php if(isset($_GET['from_date'])){ echo $_GET['from_date'];}else{} ?>" class="add-new">
                </div>
                <div class="col-md-2">
                    <input class="add-new btn btn-white" type="date" name="to_date"  value="<?php if(isset($_GET['to_date'])){ echo $_GET['to_date'];}else{} ?>" class="add-new">
                </div>
                <div class="col-md-2">
                    <button type="submit" class="add-new btn btn-white">Filter</button>
                </div>
                <div class="col-md-2">
                    <button type="submit" name="export_data" class="add-new btn btn-white">Export to Excel</button>
                    <!-- <a class="add-new btn btn-white" href="user-table.php?export_data=1">Export to Excel</a> -->
                </div>
            </form>

     





            <?php
           
            include "config.php";

            
            if (isset($_GET['from_date']) && isset($_GET['to_date'])) {
                
                $from_date = $_GET['from_date'];
                $to_date = $_GET['to_date'];

                
                $query = "SELECT * FROM user WHERE date BETWEEN '$from_date' AND '$to_date' ORDER BY date DESC"; 
                $query_run = mysqli_query($conn, $query);

                
                if (mysqli_num_rows($query_run) > 0) {
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
                            
                            while ($row = mysqli_fetch_assoc($query_run)) {
                                ?>
                                <tr>
                                    <td><?php echo $row['user_id']; ?></td>
                                    <td><?php echo $row['first_name'] . " " . $row['last_name']; ?></td>
                                    <td><?php echo $row['username']; ?></td>
                                    <td><?php echo ($row['role'] == 1) ? "admin" : "normal"; ?></td>
                                    <td><?php echo $row['date']; ?></td>
                                    <td class='edit'><a href='update-user.php?id=<?php echo $row["user_id"]; ?>'><i
                                                    class='fa fa-edit'></i></a></td>
                                    <td class='delete'><a
                                            href='delete-user.php?id=<?php echo $row["user_id"]; ?>'><i
                                                    class='fa fa-trash-o'></i></a></td>
                                </tr>
                                <?php
                            }
                            ?>
                        </tbody>
                    </table>
                    <?php
                } else {
                   
                    echo "No Records Found";
                }
            }
            ?>
        </div>
    </div>
</div>

<?php include "footer.php"; 


 
?>