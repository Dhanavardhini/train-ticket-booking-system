<?php
// Define paths to required files
$modelsPath = '../../../../models/post.php';
$headersPath = '../../../../config/header.php';

// Check if required files exist and include them
if (!file_exists($modelsPath) || !file_exists($headersPath)) {
    http_response_code(500);
    echo json_encode(['error' => 'Required files are missing']);
    exit();
}

require_once $modelsPath;
require_once $headersPath;

// Decode the incoming JSON data
$data = json_decode(file_get_contents('php://input'));

// Validate JSON data
if ($data === null) {
    http_response_code(400);
    echo json_encode(['error' => 'Invalid JSON input']);
    exit();
}

// Debugging: Log the incoming data to the error log
error_log(print_r($data, true));  // Log the incoming data to the PHP error log

// Extract values from JSON input
$name = $data->name ?? null;
$email = $data->email ?? null;
$phone = $data->phone ?? null;
$train_name = $data->train_name ?? null;
$from = $data->from ?? null;
$to = $data->to ?? null;
$tickets = $data->tickets ?? null;
$date = $data->date ?? null;
$price = $data->price ?? null;
$payment = $data->payment ?? null;
$status = $data->status ?? null;

// Create an instance of the Post class
$obj = new Post();

// Insert train booking data
$result = $obj->trainbook($name, $email, $phone, $train_name, $from, $to, $tickets, $date, $price, $payment, $status);

// Handle errors
if ($result === false) {
    http_response_code(500);
    echo json_encode(['error' => 'Internal server error']);
    exit();
}

// Send the result
echo json_encode($result);
?>
