<?php
/**
 *
 */
class homeController extends Controller
{


  public function index($id='',$name='')
  {
    // echo 'i am in '.__CLASS__.'<br>method '.__METHOD__.'';
    // echo 'i am is '.$id.' my name is '.$name;
  $news= $this->model('News');
  $category= $this->model('Category');

    $this->view('home'.DIRECTORY_SEPARATOR.'index',['news'=>$news->all(),'category'=>$category->all()]);
    $this->view->pageTitle='this page of index';

    $this->view->render();
  }

public function back()
{
  header('Location:'.$_SERVER['HTTP_REFERER']);
  exit;
}


  public function aboutus()
  {
    // echo 'i am in '.__CLASS__.'<br>method '.__METHOD__.'';
    $this->view('home'.DIRECTORY_SEPARATOR.'aboutUs');
$this->view->pageTitle='this page of about Us';
    $this->view->render();
  }


  public function loggin()
    {

   if ($_SERVER["REQUEST_METHOD"] == "POST") {
     //do validation to POST

          $validate=Validation::required(['','email','password']);

               if ($validate['status'] == 0){
                   $this->index();
                   return;
                   }

             $password=Hashing::init($_REQUEST['password'])->__toString();
            $userForm= array(':email' =>$_REQUEST['email'] ,':password' =>$password);
            $this->model('Users');
           $user=$this->model->checkLogin($userForm);


           if ($user['status']==0) {
             Message::setMessage('msgState',0);
             Message::setMessage('main','لم يتم تسجيل الدخول بنجاح الرجاء المحاولة مرة اخرى');
             $this->index();
             return;
           }
           Session::loggIn($user);
           if (Session::logged()) {

             Message::setMessage('msgState',1);
             Message::setMessage('main','لقد تم تسجيل الدخول بنجاح');
             if (Session::get('type')=='Admin') {

                $adminController=new adminController();
                $adminController->index();
                return ;


             }
             else {

               $this->index();
               return ;
             }

           }
           else {
             $this->index();
             return ;
           }






   }
   else {
     $this->index();
     return ;
   }





  }

public function logout()
{

  Session::destroy();
  $this->index();
}


public function viewPost($id)
{

  $news= $this->model('News');
  $comments= $this->model('Comments');
    $category= $this->model('Category');

  $this->view('home'.DIRECTORY_SEPARATOR.'post',['news'=>$news->find( array(0 =>$id)),'comments'=>$comments->newComments(array(0 =>$id)),'category'=>$category->all()]);
  $this->view->pageTitle='this page of index';

  $this->view->render();

}


public function addComment()
  {

 if ($_SERVER["REQUEST_METHOD"] == "POST") {
   //do validation to POST

        $validate=Validation::required(['','comment']);

             if ($validate['status'] == 0){
                 $this->back();
                 return;
                 }

print_r($_REQUEST);
          $userForm= array(':text_com' =>$_REQUEST['comment'] ,':user_id' =>Session::get('userID') ,':news_id' =>$_REQUEST['news_id']);
          $this->model('Comments');
         $this->model->add($userForm);
         Message::setMessage('status',1);
         Message::setMessage('main','تم اضافة التعليق بنجاح ّ!');
         $this->back();       }
}

public function categoryItem($id)
{

  $news= $this->model('News');
  $category= $this->model('Category');

 $categories= array('cat_title' =>Helper::catName($id) ,'id'=>$id );

  $this->view('home'.DIRECTORY_SEPARATOR.'category',['news'=>$news->findCategory( array(0 =>$id)),'categories'=>$categories,'category'=>$category->all()]);
  $this->view->pageTitle='this page of '.Helper::catName($id);

  $this->view->render();

}

public function findTag($tag)
{
  $news= $this->model('News');
  $category= $this->model('Category');

  $this->view('home'.DIRECTORY_SEPARATOR.'tags',['news'=>$news->findTags($tag),'category'=>$category->all()]);
  $this->view->pageTitle='this page of Tags ';

  $this->view->render();
}


}

 ?>
