<?php 

if(isset($_POST['submit_image']))
{
  $uploadfile=$_FILES["upload_file"]["tmp_name"];
  $folder="/uploads/";
  move_uploaded_file($_FILES["upload_file"]["tmp_name"], $folder.$_FILES["upload_file"]["name"]);
  echo '<img src="'.$folder."".$_FILES["upload_file"]["name"].'">';
  exit();
}

?>