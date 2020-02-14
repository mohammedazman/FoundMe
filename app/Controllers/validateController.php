<?php
/**
 *
 */
class validateController
{
    protected $validation;


  public function index()
  {

}
public function signupValidate($formData)
{
    $this->validation=new Validation();

    $this->validation->checkFild(
        ['first_name'=>array(['required' => 'required', 'maxWords' => '1'])
        ,'last_name'=>array(['required' => 'required', 'maxWords' => '1'])
        ,'password'=>array(['required' => 'required', 'maxWords' => '1'])
        ,'password'=>array(['required' => 'required', 'min' => '8'])
        ,'confirm_password'=>array(['required' => 'required', 'confirmed' => 'password'])
        ,'email'=>array(['required' => 'required', 'unique' =>array('users','email')])
        ,'phone'=>array(['required' => 'required'])],$formData
      );
      if ($this->validation->GetStatus()===1) {
        return  json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));

      }
      else{
        return  json_encode(array("statusCode"=>204,"message"=>json_encode($_SESSION)));

    }



  }


  public function editProfileValidate($formData)
{
    $this->validation=new Validation();

    $this->validation->checkFild(
        ['first_name'=>array(['required' => 'required', 'maxWords' => '1'])
        ,'last_name'=>array(['required' => 'required', 'maxWords' => '1'])
        ,'phone'=>array(['required' => 'required'])],$formData
      );
      if ($this->validation->GetStatus()===1) {
        return  json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));

      }
      else{
        return  json_encode(array("statusCode"=>204,"message"=>json_encode($_SESSION)));

    }



  }
  function stringToArray($formArray) {

    $returnArray =[];
    foreach ($formArray as $val){
        $input=explode('=',$val);
      $returnArray[$input[0]] = str_replace("%40","@",$input[1]);
    }
    return $returnArray;
    }
     public function loginValidate($formData)
    {
         //do validation to POST
         $this->validation=new Validation();

         $this->validation->checkFild([
          'email' => array(['required' => 'required']),
          'password' => array(['required' => 'required' ]),
      ],$formData);

      if ($this->validation->GetStatus()===1) {

        return  json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));

      }
      else{
        return  json_encode(array("statusCode"=>204,"message"=>json_encode($_SESSION)));
      }

    }
    public function addDonationValidate($formData)
   {
        //do validation to POST
        $this->validation=new Validation();

        $this->validation->checkFild([
         'Donation' => array(['required' => 'required']),
         'country' => array(['required' => 'required' ]),
         'code' => array(['required' => 'required']),
         'debitNumber' => array(['required' => 'required' ]),
     ],$formData);

     if ($this->validation->GetStatus()===1) {

       return  json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));

     }
     else{
       return  json_encode(array("statusCode"=>204,"message"=>json_encode($_SESSION)));
     }

   }
    public function addCompainValidate($formData)
    {
      $this->validation=new Validation();
      $request= $this->validation->checkFild(
        ['Title'=>array(['required' => 'required', 'maxWords' => '5'])
        ,'Tags'=>array(['required' => 'required', 'maxWords' => '5'])
        ,'Amount'=>array(['required' => 'required', 'digit' => 'digit'])
        ,'Deuration'=>array(['required' => 'required','date'=>'date' ])],$formData
      );
      if ($this->validation->GetStatus()===1) {
        return  json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));

      }
      else{
        return  json_encode(array("statusCode"=>204,"message"=>json_encode($_SESSION)));
    }


}
}
$validate=new validateController();
if(count($_POST)>0){

if($_POST['type']=="signup"){

     $data=$validate->stringToArray(explode('&',$_POST['formData']));
     echo $validate->signupValidate($data);
  }
if($_POST['type']=="login"){

    $data=$validate->stringToArray(explode('&',$_POST['formData']));
    echo $validate->loginValidate($data);
 }
 if($_POST['type']=="addCompain"){
  $data=$validate->stringToArray(explode('&',$_POST['formData']));
  echo $validate->addCompainValidate($data);
}
if($_POST['type']=="addDonation"){
 $data=$validate->stringToArray(explode('&',$_POST['formData']));
 echo $validate->addDonationValidate($data);
}

if($_POST['type']=="editProfile"){
  $data=$validate->stringToArray(explode('&',$_POST['formData']));
  echo $validate->editProfileValidate($data);
 }
 
}

 ?>
