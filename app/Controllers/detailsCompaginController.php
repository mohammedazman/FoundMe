<?php
/**
 *
 */
class detailsCompaginController extends Controller
{
  private $details;

  public function index()
{
   
  }


  public function getcomment($id){
    $this->model('Comments');
    $comments=Helper::merageUserInfo($this->model->getModel()->CompaignComments([$id]),'user_id');
    return json_encode(array("statusCode"=>200,"data"=>$comments));
  }

  public function addcomment($id)
  {
    $this->model('Comments');
    $comments=$this->model->getModel()->addcomment([Session::get('userID'),$id ,$_POST['comment'],1]);
    return json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));
  }
  }

  $Comment= new detailsCompaginController();
  if(count($_POST)>0){
    $type=$_POST['type'];
  if($type=="getcomment"){
      echo $Comment->getcomment($_POST['id']);
      }
     elseif($type=="addcomment"){
        echo $Comment->addcomment($_POST['id']);

  }
  }

 ?>
