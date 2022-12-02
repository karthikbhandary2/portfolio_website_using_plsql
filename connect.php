<?php
	$email = $_POST['email'];
	$subject = $_POST['subject'];
	$message = $_POST['message'];

	//Database connection
	$conn = new mysqli('localhost', 'root', '', 'portfolio');
	if($conn->connect_error){
		die('Connection Failed: '.$conn->connect_error);
	}
	else{
		$stmt = $conn->prepare("CALL putInfo(?,?,?);");
		// $stmt = $pdo->prepare($stmt);
		$stmt->bind_param("sss", $email, $subject, $message);
		$stmt->execute();
		echo "Message Received! Karthik will get back to you shortly!!";
		$stmt->close();
		$conn->close();
	}
?>