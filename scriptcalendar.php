<?php

$user_name = "root";
$password = "";
$database = "saith seren";
$server = "127.0.0.1";

$conn = mysqli_connect($server, $user_name, $password, $database);

$year = date("Y");
$month = date("m");

$daysInMonth = cal_days_in_month(CAL_GREGORIAN, $month, $year);

// Get the number of days in the current month
$dates = [];
for ($day = 1; $day <= $daysInMonth; $day++) {
    $dates[] = "$year-$month-$day";
}

// Fetch events from the database for the current month
$events = [];
$sql = "SELECT DateEvent, NameEvent FROM event WHERE MONTH(DateEvent) = $month AND YEAR(DateEvent) = $year";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $events[$row['DateEvent']][] = $row['NameEvent'];
    }
}

// Generate the calendar grid

$firstDayOfWeek = date("N", strtotime("$year-$month-01"));
$daysInWeek = 7;
$currentDay = 1;
$totalDaysDisplayed = 0;
$daysInMonth = cal_days_in_month(CAL_GREGORIAN, $month, $year);

while ($totalDaysDisplayed < $daysInMonth) {
    echo "<tr>";
    
    for ($i = 1; $i <= $daysInWeek; $i++) {
        if ($totalDaysDisplayed >= $firstDayOfWeek && $currentDay <= $daysInMonth) {
            echo "<td";
            if ($currentDay == date("j")) {
                echo " class='current-day'";
            }
            if (isset($events["$year-$month-$currentDay"])) {
                echo " class='events'";
            }
            echo ">$currentDay";
            if (isset($events["$year-$month-$currentDay"])) {
                echo "<br>";
                foreach ($events["$year-$month-$currentDay"] as $event) {
                    echo $event . "<br>";
                }
            }
            echo "</td>";
            $currentDay++;
        } else {
            echo "<td></td>";
        }

        $totalDaysDisplayed++;
    }
    
    echo "</tr>";
}
?>