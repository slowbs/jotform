<html>
<body>

<?php
$url = 'http://localhost/github/testpostyii/web/index.php?r=rpst%2Fcreate';
//$url = 'http://localhost/github/testyii/testfuck/create2';
//$url = 'http://61.19.202.219/ssjta/jotform/submit.php';
//$url = 'http://61.19.202.218/rpst/4.php';
$_POST += ['test' => "duck"];
$post = 'data='.json_encode($_POST);

$ch = curl_init($url);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
curl_setopt($ch, CURLOPT_HEADER, false);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, false);
curl_exec($ch);
curl_close($ch);

//header("Location: form.php");


//pretty print
//print("<pre>".print_r($_POST,true)."</pre>");
?>

</body>
</html>
