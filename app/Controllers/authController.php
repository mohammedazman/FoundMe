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

            $adminUser=array('email' =>'admin@email.com' ,
                  'password'=>Hashing::init('admin')->__toString(),
                  'type'=>'Admin',
                 'status'=>0);
            $password=Hashing::init($_REQUEST['password'])->__toString();
            $userForm= array($_REQUEST['email'] ,$password);
            if ($userForm[0]==$adminUser['email'] ) {
              Session::AdminloggIn();
              Message::setMessage(1,'main','logged in succesfuly');
              header('Location:/admin/index');
              return;
            }

            // $this->model('Users');
           $user=$this->modelObj->checkLogin($userForm);

           if(sizeof($user)<=0){
             Message::setMessage(0,'main','failed to log in pleas try agin');
             Helper::back();
             return;

           }
           if ($user[0]['status']==0) {

             Message::setMessage(0,'main','failed to log in pleas try agin');
             Helper::back();
             return;
           }
           else{

           Session::loggIn($user);

           Message::setMessage(1,'main','logged in succesfuly');

             if (Session::get('type')=='Admin') {

              header('Location:/admin/index');
              return ;

             }
             if($signup==true){
               header('Location:/auth/welcome');
               return ;
              }
             else{
                header('Location:/home/index');
                return ;
              }

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

                      Notification::addNoti('New user is added','admin','new user',$this->modelObj->lastID()['id']);
                     $this->model('Profiles');
                     $profile=$this->model->getModel();

                     $profile->add(['First Name',$_REQUEST['first_name'],$this->modelObj->lastID()['id']]);
                     $profile->add(['Last Name',$_REQUEST['last_name'],$this->modelObj->lastID()['id']]);
                     $profile->add(['Phone',$_REQUEST['phone'],$this->modelObj->lastID()['id']]);

                     Message::setMessage(1,'main',' Your account added successfully');
                     $this->login(true);



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
