<?php
/**
 *
 */
class manageusersController extends Controller
{

    private $userModel;

    public function __construct()
    {
      $this->model('Users');
      $this->userModel=$this->model->getModel();
    }
    public function index()
    {




    }
    public function ShowDeletedUsers(){

      $this->view('cp'.DIRECTORY_SEPARATOR.'deleteUsers');
      $this->view->pageTitle='Delete Users';
      $this->view->render();


    }
    public function showActiveUsers(){
      $this->view('cp'.DIRECTORY_SEPARATOR.'activeUsers');
      $this->view->pageTitle='Active Users';
      $this->view->render();

    }
    public function showUsers($state){

      $usersArray = $this->userModel->getUsers([$state]);

      return  json_encode(array("statusCode"=>200,"data"=>Helper::merageUserInfo($usersArray,'id')));

    }

    public function deleteUsers($ids,$state){

      $usersArray = $this->userModel->deleteUsers([$state,$ids]);
      return  json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));

    }



}

$manage=new manageusersController();
if(count($_POST)>0){

if($_POST['type']==1){

  echo $manage->showUsers(1);
  }
  if($_POST['type']==3){

    echo $manage->showUsers(0);
    }

if($_POST['type']==2){
  // print_r($_POST);
  echo $manage->deleteUsers($_POST['ids'],$_POST['state']);
  }

}
 ?>
