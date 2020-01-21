<?php
/**
 *
 */
class authController extends Controller
{
  protected $modelObj;
  public function __construct()
    {
        $this->model('Users');
        $this->modelObj= $this->model->getModel();
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
          $validate=Validation::required(['','email','password']);

               if ($validate['status'] == 0){
                   Helper::back();
                   return;
                   }

            $password=Hashing::init($validate['data'][':password'])->__toString();
            $userForm= array($validate['data'][':email'] ,$password);
            // $this->model('Users');
           $user=$this->modelObj->checkLogin($userForm);
          //  print_r($user);
           if ($user[0]['status']==0) {

             Message::setMessage(0,'main','لم يتم تسجيل الدخول بنجاح الرجاء المحاولة مرة اخرى');
             $this->index();
             return;
           }

           Session::loggIn($user);
           Message::setMessage(1,'main','لقد تم تسجيل الدخول بنجاح');
             if (Session::get('type')=='Admin') {

                $adminController=new adminController();
                $adminController->index();
                return ;


             }
   }
       $this->view('home'.DIRECTORY_SEPARATOR.'login');
       $this->view->pageTitle='Log In Page';
       $this->view->render();


  }

  public function signUp($id='',$name='')
  {
      // check if there submit
      if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $request= Validation::required(['','password','email','phone','first_name','last_name']); //sure that first element in array most be null

    if ($request['status']==1) {
              // $user=$this->model('Users');

             $params[]=$request['data'][':email'];
             $params[]=Hashing::init($request['data'][':password'])->__toString();
             $params[]=1;
             $params[]='User';


                   if ($this->modelObj->add($params)) {
                     $this->model('Profiles');
                     $profile=$this->model->getModel();

                     $profile->add(['First Name',$request['data'][':first_name'],$this->modelObj->lastID()['id']]);
                     $profile->add(['Last Name',$request['data'][':last_name'],$this->modelObj->lastID()['id']]);
                     $profile->add(['Phone',$request['data'][':phone'],$this->modelObj->lastID()['id']]);

                     Message::setMessage(1,'main',' add new account have be done ');
                     header('Location:/home/index');
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
  $this->index();
}









}

 ?>
