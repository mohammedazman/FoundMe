<?php
/**
 *
 */
class authController extends Controller
{


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
                   Helpert;
                   return;
                   }

             $password=Hashing::init($validate['data'][':password'])->__toString();
            $userForm= array(':email' =>$validate['data'][':email'] ,':password' =>$password);
            $this->model('Users');
           $user=$this->model->checkLogin($userForm);


           if ($user['status']==0) {

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
              $user=$this->model('Users');

             $params[':email']=$request['data'][':email'];
             $params[':password']=Hashing::init($request['data'][':password'])->__toString();
             $params[':status']=1;
             $params[':type']='User';


                   if ($user->add($params)) {
                    $profile=$this->model('Profiles');

                     $profile->add([':name'=>'First Name',':value'=>$request['data'][':first_name'],'user_id'=>$user->lastID()['id']]);
                     $profile->add([':name'=>'Last Name',':value'=>$request['data'][':last_name'],'user_id'=>$user->lastID()['id']]);
                     $profile->add([':name'=>'Phone',':value'=>$request['data'][':phone'],'user_id'=>$user->lastID()['id']]);

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
