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
  public function checkFild($fild,$formCurrentData)
  {


  foreach ($fild as $fildName => $validation){


    foreach ($validation[0] as $typeValidate => $data) {
        $formData = $formCurrentData[$fildName];

        switch ($typeValidate) {
            case 'required':
                $this->required($fildName,$formCurrentData);
                continue 2;
            case 'min':
                $this->main($fildName,$data,$formCurrentData);
                continue 2;
            case 'minWords':
                $this->minWords($fildName,$data,$formCurrentData);
                continue 2;
            case 'max':
                $this->max($fildName,$data,$formCurrentData);
                continue 2;
            case 'maxWords':
                $this->maxWords($fildName,$data,$formCurrentData);
                continue 2;
            case 'confirmed':
            $this->confirmPassword($fildName,$data,$formCurrentData);
            continue 2;
            case 'email':
            $this->EmailCheck($fildName,$formCurrentData);
            continue 2;
            case 'digit':
            $this->DigitCheck($fildName,$formCurrentData);
            continue 2;
            case 'alpha':
            $this->AlphaCheck($fildName,$formCurrentData);
            continue 2;
            // case 'date':
            // $this->ValidateDate($fildName,$formCurrentData);
            // continue 2;
            case 'unique':
                $this->unique($data[0],$data[1],$fildName,$formCurrentData);
                break;
    }
  }

}}




  public function main($input,$data,$formCurrentData)
  {
    if (strlen($formCurrentData["$input"]) < $data){
      Message::setMessage(0,'main','There are error ,please try again');
      Message::setMessage(0,$input,"This $input must be more than  $data");
      $this->SetStatus(0);
    }

    return;
  }

  public function max($input,$data,$formCurrentData)
  {
    if (strlen($formCurrentData["$input"]) > $data){
      Message::setMessage(0,'main','There are error ,please try again');
      Message::setMessage(0,$input,"This $input must be less than  $data");
      $this->SetStatus(0);
    }

    return;
  }

  public function minWords($input,$data,$formCurrentData)
  {
  if (str_word_count($formCurrentData["$input"]) < $data){
    Message::setMessage(0,'main','There are error ,please try again');
    Message::setMessage(0,$input,"This $input must be more than  $data");
    $this->SetStatus(0);
  }
  return;
  }

  public function maxWords($input,$data,$formCurrentData)
  {
  if (str_word_count($formCurrentData["$input"]) > $data){
    Message::setMessage(0,'main','There are error ,please try again');
    Message::setMessage(0,$input,"This $input must be less than  $data");
    $this->SetStatus(0);
  }
  return;
  }

  public function confirmPassword($input,$data,$formCurrentData)
  {


    if ($formCurrentData["$input"] != $formCurrentData["$data"]){
      Message::setMessage(0,'main','There are error ,please try again');
      Message::setMessage(0,$input,"This $input must be equall   $data");
      $this->SetStatus(0);

    }

    return;
  }
  public function required($input,$formCurrentData)
  {

              if (empty($formCurrentData["$input"])) {

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


  public  function unique($table,$colum,$input,$formCurrentData)
  {
    
    $aData=[$formCurrentData["$input"]];
    

    $email=DB::init()->QueryCrud("SELECT * FROM $table WHERE $colum=?",$aData);

    if (sizeof($email)>0) {
      Message::setMessage(0,'main','There are error ,please try again');
      Message::setMessage(0,$input,"This $input is exist  you must Enter another $input");
      $this->SetStatus(0);
      return;
    }
   
  }

  public function EmailCheck($input,$formCurrentData)
	{
    $email=$formCurrentData["$input"];
    if (!filter_var($email, FILTER_VALIDATE_EMAIL))
    {
      Message::setMessage(0,'main','There are error ,please try again');
      Message::setMessage(0,$input,"This Email is not a valid email address");
      $this->SetStatus(0);
      return;

    }

  }


  public function AlphaCheck($input,$formCurrentData)
  {
    $statement=$formCurrentData["$input"];
    if (!ctype_alpha($statement))
    {
      Message::setMessage(0,'main','There are error ,please try again');
      Message::setMessage(0,$input,"This $input  must contains letters only");
      $this->SetStatus(0);
      return;
    }
  }

  public function DigitCheck($input,$formCurrentData)
  {
    $number=$formCurrentData["$input"];
    if (!ctype_digit($number))
    {
      Message::setMessage(0,'main','There are error ,please try again');
      Message::setMessage(0,$input,"This $input   must contains numbers only");
      $this->SetStatus(0);
      return;
    }
  }

  function ValidateDate($input,$formCurrentData,$format = 'Y-m-d')
  {
    $date=$formCurrentData["$input"];
      $d = DateTime::createFromFormat($format, $date);
      if (! $d && $d->format($format) == $date) {
        Message::setMessage(0,'main','There are error ,please try again');
        Message::setMessage(0,$input,"This Format $input   must be Date");
        $this->SetStatus(0);
        return;
      }
  }
}


 ?>
