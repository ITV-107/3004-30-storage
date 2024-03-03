<?php
// Print out which host container is being visited
echo "<h1>Container ID: ".getenv("HOSTNAME")."</h1>";

// Hit counter design found here -> https://stackoverflow.com/questions/18959592/php-only-hit-counter
// Get the total number of hits and increment by 1
$counter = file_get_contents("./hits") + 1;
// Push hits back to file system.
file_put_contents("./hits", $counter);

// Print the number of hits the container has had thus far.
echo "<br><p>Number of visits to this container: ".$counter."</p>";
?>
