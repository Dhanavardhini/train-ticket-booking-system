<?php

$modelsPath = '../../../../models/post.php';
$headersPath = '../../../../config/header.php';


if (!file_exists($modelsPath) || !file_exists($headersPath)) {
    handleError(500, 'Required files are missing');
}


require_once $modelsPath;
require_once $headersPath;


$data = json_decode(file_get_contents('php://input'));


function handleError($statusCode, $message) {
    http_response_code($statusCode);
    echo json_encode(['error' => $message]);
    exit();
}

$obj = new Post();


$result = $obj->Register($data->username, $data->email,$data->password);


if ($result === false) {
    handleError(500, 'Internal server error');
}


echo json_encode($result);

?>
