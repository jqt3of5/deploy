<?php

$data_back = json_decode(file_get_contents('php://input'));
$ref = $data_back["ref"];
$sha = $data_back["sha"];
$env = $data_back["environment"];
$name = $data_back["name"];

echo `../fetch.sh $name /var/www/deploy $sha`

?>