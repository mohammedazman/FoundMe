<?php 
use PHPMailer\PHPMailer\PHPMailer; 
use PHPMailer\PHPMailer\Exception; 
function sendCodetoClint($email,$code,$user){

require 'vendor/autoload.php'; 

$mail = new PHPMailer(true); 

try { 
	$mail->SMTPDebug = 0;									 
	$mail->isSMTP();											 
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'fundme849@gmail.com';//php.mailing.test@gmail.com  
    $mail->Password = 'fundmefund';//heythere
    $mail->SMTPSecure = 'tls';
    $mail->Port = 587;

	$mail->setFrom('fundme849@gmail.com', 'FundMe');		 
	$mail->addAddress($email); 
	
	$mail->isHTML(true);								 
	$mail->Subject = 'Change Password'; 
	$mail->Body = 'Welcome <b>'.$user.'</b> ,your varification code is <b>'.$code.'</b><br> write it in code filed to confirm your email and change your password '; 
    $mail->send(); 
    return 200;
	// echo "Mail has been sent successfully!"; 
} catch (Exception $e) { 
    return 204;
	// echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}"; 
} 
}
?> 
