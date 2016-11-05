<?php
echo "Hello World";
// Include the SDK using the Composer autoloader
require 'vendor/autoload.php';
$s3 = new Aws\S3\S3Client([
    'version' => 'latest',
    'region'  => 'us-west-1'
]);
// Use an Aws\Sdk class to create the S3Client object.
$result = $s3->listBuckets();
foreach ($result['Buckets'] as $bucket) {
    echo $bucket['Name'] . "\n";
}
// Convert the result object to a PHP array
$array = $result->toArray();
?>
<html>
<head><title>hello</title></head>
<body>
<h1>Welcome to the best class ever</h1>
</body>
</html>
