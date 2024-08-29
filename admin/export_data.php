<?php
include "config.php";
$from_date = $_GET["from_date"];
$to_date = $_GET["to_date"];
  $sql_query = "SELECT * FROM user WHERE date BETWEEN '$from_date' AND '$to_date' ORDER BY date DESC";
//   var_dump($sql_query);  die();
// $sql_query = "SELECT first_name, last_name, username, role, date FROM user";
$resultset = mysqli_query($conn, $sql_query) or die("Database error: " . mysqli_error($conn));

$user_records = array();

if(mysqli_num_rows($resultset) > 0) {
    while($row = mysqli_fetch_assoc($resultset)) {
        $user_records[] = $row;
    }
}

if(isset($_GET["export_data"])) {
    $filename = "data_export_" . date('Ymd') . ".csv";

    header("Content-Type: config.php/text/csv");
    header("Content-Disposition: attachment; filename=\"$filename\"");
    header("Pragma: no-cache");
    header("Expires: 0");

    if(!empty($user_records)) {
     
        $header = array_keys($user_records[0]);
        echo implode(",", $header) . "\n";

       
        foreach($user_records as $record) {
            echo implode(",", $record) . "\n";
        }
    } else {
        echo "No records found to export.";
    }

    exit;
}
?>
