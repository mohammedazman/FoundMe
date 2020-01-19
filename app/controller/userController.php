<?php

/**
 *
 */
class userController extends Controller
{
//
public function index()
{
$this->model('Users');
  $this->view('admin'.DIRECTORY_SEPARATOR.'accounts',['accounts'=>$this->model->all()]);

  $this->view->pageTitle='admin index';
  $this->view->render();

}

//

//controller for adding user by admin
public function add()
{

  // check if there submit
  if ($_SERVER["REQUEST_METHOD"] == "POST") {

$validate= Validation::required(['','password','email','username']); //sure that first element in array most be null


if ($validate['status']==1) {
$post= array(
              ':email' => htmlentities($_REQUEST['email']),
              ':username' => htmlentities($_REQUEST['username']),
              ':password' => Hashing::init($_REQUEST['password']),
              ':type' =>  htmlentities($_REQUEST['type']),
               ':status' => isset($_REQUEST['status'])?htmlentities($_REQUEST['status']):0,
               );

               $this->model('Users');


               if ($this->model->add($post)) {
                 Message::setMessage('msgState',1);
                 Message::setMessage('main','تم اضافة المستخدم بنجاح');
               }
}


  }











  # show form view  to add new user


      $this->view('admin'.DIRECTORY_SEPARATOR.'addUser');

      $this->view->pageTitle='Add New User';
      $this->view->render();
}

//controller for adding user by admin
public function edit($id)
{

  // check if there submit
  if ($_SERVER["REQUEST_METHOD"] == "POST") {

$validate= Validation::required(['','password','email','username']); //sure that first element in array most be null


if ($validate['status']==1) {
$account= array(
              ':email' => htmlentities($_REQUEST['email']),
              ':username' => htmlentities($_REQUEST['username']),
              ':password' => Hashing::init($_REQUEST['password']),
              ':type' =>  htmlentities($_REQUEST['type']),
               ':status' => isset($_REQUEST['status'])?htmlentities($_REQUEST['status']):0,
               'id'=>$id
               );

               $this->model('Users');


               if ($this->model->update($account)) {
                 Message::setMessage('msgState',1);
                 Message::setMessage('main','تم تحديث بيانات الحساب بنجاح');
               }
}


  }









$account=isset($this->model)?$this->model: $this->model('Users');

  # show form view  to add new user


      $this->view('admin'.DIRECTORY_SEPARATOR.'editUser',['accounts'=>$account->find( array(0 =>$id))]);

      $this->view->pageTitle='Add New User';
      $this->view->render();
}


//
public function delete($id)
{
  $this->model('Users');
  $this->model->delete( array(0 => $id ));
  Message::setMessage('status',1);
  Message::setMessage('main','تم حذف الحساب بنجاحّ!');
  header('Location:/user/index');

}







}





















 ?>
