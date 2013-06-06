<?php $to = "silverbladesolutions@gmail.com";
$subject = "Successful Email Setup Confirmation";
$message = "Woop, Emails now work from your server!";
$headers = "From: <pi@silverbladesolutions.com>\r\n";
mail($to,$subject,$message,$headers); echo "Mail Sent."; ?>
