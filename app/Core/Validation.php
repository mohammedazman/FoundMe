<?php

/**
 *
 */
class Validation
{
  private $status;

  function __construct()
  {
    $this->status=1;

  }
  private  function SetStatus($state)
  {
    if ($this->status==1) {
    $this->status=$state;
    }
  }
  public  function GetStatus()
  {
    return $this->status;
  }
  public function required($input=[])
  {
    $data=[];

    foreach ($_REQUEST as $key => $value) {

      if (array_search($key,$input) !== false) {

              if (empty($value)) {

                $error="you must fill  ".$key;

                Message::setMessage(0,'main','you must fill all field');
                Message::setMessage(0,$key,$error);
                $this->SetStatus(0);
                return(['status'=>$this->status]);

              }
      }

      $data[':'.$key.'']=$this->test_input($value);


    }
    return (['data'=>$data]);
  }


public   function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }


  public  function unique($table,$colum,$input)
  {
    $aData=[$_REQUEST["$input"]];




    if (DB::init()->QueryCrud("SELECT * FROM $table WHERE $colum=?",$aData)) {
      Message::setMessage(0,'main','There Error try agin');
      Message::setMessage(0,$input,"This $input exist befeor you must Enter another $input");
      $this->SetStatus(0);
      return;
    }

  }


  public function EmailCheck($input)
	{
    $email=$_REQUEST["$input"];
    if (!filter_var($email, FILTER_VALIDATE_EMAIL))
    {
      Message::setMessage(0,'main','There Error try agin');
      Message::setMessage(0,$input,"This Email is not a valid email address");
      $this->SetStatus(0);
      return;

    }

  }


  public function AlphaCheck($input)
  {
    $statement=$_REQUEST["$input"];
    if (!ctype_alpha($statement))
    {
      Message::setMessage(0,'main','There Error try agin');
      Message::setMessage(0,$input,"This $input  must contains letters only");
      $this->SetStatus(0);
      return;
    }
  }

  public function DigitCheck($input)
  {
    $number=$_REQUEST["$input"];
    if (!ctype_digit($number))
    {
      Message::setMessage(0,'main','There Error try agin');
      Message::setMessage(0,$input,"This $input   must contains numbers only");
      $this->SetStatus(0);
      return;
    }
  }
}


 ?>
