<?php
function listdates($sprtid){ //function parameters, two variables.
  $curl = curl_init();

  curl_setopt_array($curl, array(
  CURLOPT_URL => "https://therundown.io/api/v1/sports/${sprtid}/dates?format=epoch",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_POSTFIELDS => "{}",
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
    echo  $response;
}
?>


