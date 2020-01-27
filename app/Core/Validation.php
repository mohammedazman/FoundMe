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
  public function checkFild($fild)
  {


  foreach ($fild as $fildName => $validation){


    foreach ($validation[0] as $typeValidate => $data) {
        $formData = $_REQUEST[$fildName];

        switch ($typeValidate) {
            case 'required':
                $this->required($fildName);
                continue 2;
            case 'min':
                $this->main($fildName,$data);
                continue 2;
            case 'minWords':
                $this->minWords($fildName,$data);
                continue 2;
            case 'max':
                $this->max($fildName,$data);
                continue 2;
            case 'maxWords':
                $this->maxWords($fildName,$data);
                continue 2;
            case 'confirmed':
            $this->confirmPassword($fildName,$data);
            continue 2;
            case 'email':
            $this->EmailCheck($fildName);
            continue 2;
            case 'digit':
            $this->DigitCheck($fildName);
            continue 2;
            case 'alpha':
            $this->AlphaCheck($fildName);
            continue 2;
            case 'date':
            $this->ValidateDate($fildName);
            continue 2;
            case 'unique':
                $this->unique($data[0],$data[1],$fildName);
                break;
    }
  }

}}




  public function main($input,$data)
  {
    if (strlen($_REQUEST["$input"]) < $data){
      Message::setMessage(0,'main','There Error try agin');
      Message::setMessage(0,$input,"This $input must be more than  $data");
      $this->SetStatus(0);
    }

    return;
  }

  public function max($input,$data)
  {
    if (strlen($_REQUEST["$input"]) > $data){
      Message::setMessage(0,'main','There Error try agin');
      Message::setMessage(0,$input,"This $input must be less than  $data");
      $this->SetStatus(0);
    }

    return;
  }

  public function minWords($input,$data)
  {
  if (str_word_count($_REQUEST["$input"]) < $data){
    Message::setMessage(0,'main','There Error try agin');
    Message::setMessage(0,$input,"This $input must be more than  $data");
    $this->SetStatus(0);
  }
  return;
  }

  public function maxWords($input,$data)
  {
  if (str_word_count($_REQUEST["$input"]) > $data){
    Message::setMessage(0,'main','There Error try agin');
    Message::setMessage(0,$input,"This $input must be less than  $data");
    $this->SetStatus(0);
  }
  return;
  }

  public function confirmPassword($input,$data)
  {


    if ($_REQUEST["$input"] != $_REQUEST["$data"]){
      Message::setMessage(0,'main','There Error try agin');
      Message::setMessage(0,$input,"This $input must be equall   $data");
      $this->SetStatus(0);

    }

    return;
  }
  public function required($input)
  {

              if (empty($_REQUEST["$input"])) {

                $error="you must fill  ".$input;

                Message::setMessage(0,'main','you must fill all field');
                Message::setMessage(0,$input,$error);
                $this->SetStatus(0);
                return;

              }
              return ;
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

  function ValidateDate($input, $format = 'Y-m-d')
  {
    $date=$_REQUEST["$input"];
      $d = DateTime::createFromFormat($format, $date);
      if (! $d && $d->format($format) == $date) {
        Message::setMessage(0,'main','There Error try agin');
        Message::setMessage(0,$input,"This Format $input   must be Date");
        $this->SetStatus(0);
        return;
      }
  }
}


 ?>
