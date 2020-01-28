<?php
/**
 *
 */
class authController extends Controller
{
  protected $modelObj;
  protected $validation;
  public function __construct()
    {
        $this->model('Users');
        $this->modelObj= $this->model->getModel();
        $this->validation=new Validation();
    }

  public function index($id='',$name='')
  {
    $this->view('home'.DIRECTORY_SEPARATOR.'index');
    $this->view->pageTitle='Found Me';
    $this->view->render();

  }

  public function login()
    {

   if ($_SERVER["REQUEST_METHOD"] == "POST") {
     //do validation to POST
          $this->validation->checkFild([
              'email' => array(['required' => 'required', 'min' => '6']),
              'password' => array(['required' => 'required','min' => '2' ]),
              ]);



               if ($this->validation->GetStatus() == 0){
                   Helper::back();
                   return;
                   }

            $password=Hashing::init($_REQUEST['password'])->__toString();
            $userForm= array($_REQUEST['email'] ,$password);
            // $this->model('Users');
           $user=$this->modelObj->checkLogin($userForm);
          //  print_r($user);
           if ($user[0]['status']==0) {

             Message::setMessage(0,'main','failed to log in pleas try agin');
             Helper::back();
             return;
           }

           Session::loggIn($user);

           Message::setMessage(1,'main','loged in succesfuly');
             if (Session::get('type')=='Admin') {

                $adminController=new adminController();
                $adminController->index();
                return ;


             }
             Helper::goHome();

   }
       $this->view('home'.DIRECTORY_SEPARATOR.'login');
       $this->view->pageTitle='Log In Page';
       $this->view->render();


  }

  public function signUp($id='',$name='')
  {
      // check if there submit
      if ($_SERVER["REQUEST_METHOD"] == "POST") {

     $this->validation->checkFild(
       ['first_name'=>array(['required' => 'required', 'maxWords' => '1'])
       ,'last_name'=>array(['required' => 'required', 'maxWords' => '1'])
       ,'password'=>array(['required' => 'required', 'maxWords' => '1'])
       ,'password'=>array(['required' => 'required', 'min' => '8'])
       ,'confirm_password'=>array(['required' => 'required', 'confirmed' => 'password'])
       ,'email'=>array(['required' => 'required', 'email' => 'email', 'unique' =>array('users','email')])
       ,'phone'=>array(['required' => 'required', 'digit' => 'digit'])]
     );



    if ($this->validation->GetStatus()===1) {
              // $user=$this->model('Users');

             $params[]=$_REQUEST['email'];
             $params[]=Hashing::init($_REQUEST['password'])->__toString();
             $params[]=1;
             $params[]='User';


                   if ($this->modelObj->add($params)) {

                      Notification::addNoti('New user is added and need activation','admin','new user');
                     $this->model('Profiles');
                     $profile=$this->model->getModel();

                     $profile->add(['First Name',$_REQUEST['first_name'],$this->modelObj->lastID()['id']]);
                     $profile->add(['Last Name',$_REQUEST['last_name'],$this->modelObj->lastID()['id']]);
                     $profile->add(['Phone',$_REQUEST['phone'],$this->modelObj->lastID()['id']]);

                     Message::setMessage(1,'main',' add new account have be done ');

                                            }
                                            }
  }
  $this->view('home'.DIRECTORY_SEPARATOR.'singUp');
  $this->view->pageTitle='Sign Up Page';
  $this->view->render();
}

public function logout()
{
  Session::destroy();
  Message::setMessage(1,'main',' Log Out succesfuly ');
  $this->index();
}









}

 ?>
