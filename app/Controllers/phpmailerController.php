<?php 
        use PHPMailer\PHPMailer\PHPMailer; 
        use PHPMailer\PHPMailer\Exception; 
        


require ROOT.'public'.DIRECTORY_SEPARATOR.'phpmailer'.DIRECTORY_SEPARATOR.'vendor'.DIRECTORY_SEPARATOR.'autoload.php'; 

$mail = new PHPMailer(true); 

try { 
	$mail->SMTPDebug = 2;									 
	$mail->isSMTP();											 
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'fundme849@gmail.com';//php.mailing.test@gmail.com  
    $mail->Password = 'fundmefund';//heythere
    $mail->SMTPSecure = 'tls';
    $mail->Port = 587;

	$mail->setFrom('fundme849@gmail.com', 'FundMe');		 
	$mail->addAddress('ibtehal515@gmail.com'); 
	
	$mail->isHTML(true);								 
	$mail->Subject = 'Change Password'; 
	$mail->Body = 'Welcome <b>Noha</b> ,your varification code is <b>'.'333'.'</b> '; 
	$mail->send(); 
	echo "Mail has been sent successfully!"; 
} catch (Exception $e) { 
	echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}"; 
} 
  


?> 
