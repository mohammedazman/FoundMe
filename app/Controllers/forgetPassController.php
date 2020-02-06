<?php
/**
 *
 */
class forgetPassController extends Controller
{
  protected $modelObj;
  protected $validation;
  public function __construct()
    {
        $this->model('Users');
        $this->modelObj= $this->model->getModel();
    }

  public function index($id='',$name='')
  {
    

  }


  public function emailVer()
    {
        $user=$this->modelObj->checkEmail([$_POST['email']]);
        if(sizeof($user)>0){

            $code=$this->sendCode($_POST['email'],Helper::userName($user[0]['id']));
            if($code)
            return json_encode(array("statusCode"=>200,'code'=>$code,'uid'=>$user[0]['id']));
            else
            return json_encode(array("statusCode"=>204));

        } 
        else
            return json_encode(array("statusCode"=>204));
  }

  public function sendCode($email,$user)
    {
        $code=rand(9999,999999);//rand(min,max)
        require ROOT.'public'.DIRECTORY_SEPARATOR.'phpmailer'.DIRECTORY_SEPARATOR.'index.php'; 
        $statusCode=sendCodetoClint($email,$code,$user);

        // echo $statusCode;
        if($statusCode==200)
            return $code;
        else
            return false;
  }

//   public function codeVer($uid,$code){

//       $code=$this->modelObj->checkCode([$uid,$code]);
//       if(sizeof($code)>0)
//           return json_encode(array("statusCode"=>200));
//       else
//           return json_encode(array("statusCode"=>204));
// }

 public function resetPass($uid,$pass){

    $res=$this->modelObj->changePass([Hashing::init($pass)->__toString(),$uid]);
    if($res)
        return json_encode(array("statusCode"=>200));
    else
        return json_encode(array("statusCode"=>204));
}
  public function main(){

     $this->view('home'.DIRECTORY_SEPARATOR.'forgetPass');
     $this->view->pageTitle='Forget Password';
     $this->view->render();
    }

}
$forget=new forgetPassController();
if(count($_POST)>0){

if($_POST['type']=="email"){
    echo $forget->emailVer($_POST['email']);
}
// elseif($_POST['type']=="code"){
//     echo $forget->codeVer($_POST['uid'],$_POST['code']);
// }
elseif($_POST['type']=="reset"){
    echo $forget->resetPass($_POST['uid'],$_POST['pass']);

}
}

 ?>



