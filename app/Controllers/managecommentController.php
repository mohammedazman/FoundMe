<?php
/**
 *
 */
class managecommentController extends Controller
{

    private $commentModel;

    public function __construct()
    {
      $this->model('comments');
      $this->commentModel=$this->model->getModel();
    }
    public function index()
    {
    }
    public function showDeletedComments(){

      $this->view('cp'.DIRECTORY_SEPARATOR.'deleteComments');
      $this->view->pageTitle='Active Comments';
      $this->view->render();


    }
    public function showActiveComments(){
      $this->view('cp'.DIRECTORY_SEPARATOR.'activeComments');
      $this->view->pageTitle='Active Comments';
      $this->view->render();

    }
    public function showComments($state){

      $commentsArray = $this->commentModel->getComments([$state]);

      return  json_encode(array("statusCode"=>200,"data"=>Helper::merageUserInfo($commentsArray,'user_id')));

    }

    public function deleteComments($ids,$state){

      $commentsArray = $this->commentModel->deleteComments([$state,$ids]);
      return  json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));

    }
}

$manageComm=new managecommentController();
if(count($_POST)>0){

if($_POST['type']==1){

  echo $manageComm->showComments(1);
  }
  if($_POST['type']==3){

    echo $manageComm->showComments(0);
    }

if($_POST['type']==2){
  // print_r($_POST);
  echo $manageComm->deleteComments($_POST['ids'],$_POST['state']);
  }

}
 ?>
