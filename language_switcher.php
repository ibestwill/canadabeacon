<?php
/**
 * Created by PhpStorm.
 * User: Will
 * Date: 2019-01-30
 * Time: 8:56 PM
 */

$lang = "en";
if ($_POST["lang"] == "en") {
    $lang = $_POST["lang"];
    setcookie('language', $lang, time() + 60 * 60 * 24 * 30, '/', 'canadabeacon.ca');
    header("Location: en");
} else {
    $lang = $_POST["lang"];
    setcookie('language', $lang, time() + 60 * 60 * 24 * 30, '/', 'canadabeacon.ca');
    header("Location: index");

}

?>