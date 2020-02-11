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

  public function login($signup=false)
    {

   if ($_SERVER["REQUEST_METHOD"] == "POST") {

            $password=Hashing::init($_REQUEST['password'])->__toString();
            $userForm= array($_REQUEST['email'] ,$password);
            // $this->model('Users');
           $user=$this->modelObj->checkLogin($userForm);
           if(sizeof($user)>0){
           if ($user[0]['status']==0) {

             Message::setMessage(0,'main','failed to log in pleas try agin');
             return;
           }
           else{

           Session::loggIn($user);

           Message::setMessage(1,'main','loged in succesfuly');
             if (Session::get('type')=='Admin') {

              header('Location:/admin/index');
              return ;

             }
             if($signup==true){
               header('Location:/auth/welcome');
               return;
             }

             else
             {
               $this->index();
               return;
             }


            }}
            else{
              Message::setMessage(0,'main','failed to log in pleas try agin');
            }

   }
       $this->view('home'.DIRECTORY_SEPARATOR.'login');
       $this->view->pageTitle='Log In Page';
       $this->view->render();


  }

  public function forgetPass()
  {

     $this->view('home'.DIRECTORY_SEPARATOR.'forgetPass');
     $this->view->pageTitle='Forget Password';
     $this->view->render();


}
  public function signUp()
  {
    if ($_SERVER["REQUEST_METHOD"] == "POST"){
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

                     Message::setMessage(1,'main',' Your account added successfully');
                     $this->login(true);
                    //  header('Location:/home/index');


                                            }
                                          }

  $this->view('home'.DIRECTORY_SEPARATOR.'singUp');
  $this->view->pageTitle='Sign Up Page';
  $this->view->render();
}
 public function welcome()
{
  $this->view('home'.DIRECTORY_SEPARATOR.'welcome2fundme');
  $this->view->pageTitle='Welcome';
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
