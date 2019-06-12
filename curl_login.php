<?php

include 'userpass.php';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, 'https://nrt.hdc.moph.go.th/hdc/admin/chklogin.php');
curl_setopt($ch, CURLOPT_USERAGENT,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/32.0.1700.107 Chrome/32.0.1700.107 Safari/537.36');
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, "user=$username&pass=$password");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_COOKIESESSION, true);
curl_setopt($ch, CURLOPT_COOKIEJAR, 'cookie-name');  //could be empty, but cause problems on some hosts
curl_setopt($ch, CURLOPT_COOKIEFILE, '/var/www/ip4.x/file/tmp');  //could be empty, but cause problems on some hosts
$answer = curl_exec($ch);
if (curl_error($ch)) {
    echo curl_error($ch);
}

//another request preserving the session

curl_setopt($ch, CURLOPT_URL, "https://nrt.hdc.moph.go.th/hdc/reports/pformated/format1.php?Id=1fe1b6263a1db45127a7841704e0ca77&Zone=11&Province=80&Mastercup=&Amphur=&Tumbon=&Hospcode=&Year=2562&CmiHospcode=&CmiStd=null&selSP=1&selAllProv=undefined&selHAll=1&selPeriod=undefined&selMonth=undefined&Nation=undefined&Nation_group=undefined&Labor_group=undefined&SetFreeze=undefined&mFreeze=undefined&Moph=&Dep=&Ministry=&_=1557908811635");
/* curl_setopt($ch, CURLOPT_POST, false);
curl_setopt($ch, CURLOPT_POSTFIELDS, ""); */
$answer = curl_exec($ch);
if (curl_error($ch)) {
    echo curl_error($ch);
}

//echo $answer;

preg_match_all("!:</h4>[\s\S]*?</div>!", $answer, $matches);

$num = array_values($matches[0]);
$num = preg_replace("!:</h4>!", "", $num );
$num = preg_replace("!</div>!", "", $num );
//$num = preg_replace("!<br />!", "", $num );
//print_r($matches);

//print_r($matches[0]);

echo $num[0];