<?php
/**
 * Created by PhpStorm.
 * User: Will
 * Date: 11/27/17
 * Time: 09:09
 */

require_once("stripe-php-5.6.0/init.php");

// Set your secret key: remember to change this to your live secret key in production
// See your keys here: https://dashboard.stripe.com/account/apikeys
\Stripe\Stripe::setApiKey("sk_test_oafOAX1KS4XqsgGa821CX4YC");

// Token is created using Checkout or Elements!
// Get the payment token ID submitted by the form:
$token = $_POST['stripeToken'];

$var = 100000;

// Charge the user's card:
$charge = \Stripe\Charge::create(array(
    "amount" => $var,
    "currency" => "cad",
    "description" => "Example charge",
    "receipt_email" => "jenny.rosen@example.com",
    "source" => $token,
));

?>