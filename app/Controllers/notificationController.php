<?php
/**
 *
 */
class NotificationController extends Controller
{
  private $noti;
  public function __construct()
 {
  $this->model('Notification');
  $this->noti=$this->model->getModel(); 
 }

  public function index($id='',$name='')
  {



  }
  public function viewNotification(){
   
    $this->view('home'.DIRECTORY_SEPARATOR.'notification',['notifications'=>$this->noti->getNoti(Session::get('userID'))]);
    $this->view->pageTitle='Notifications';
    $this->view->render();

  }
  public function viewAminNotification(){
   
    $this->view('cp'.DIRECTORY_SEPARATOR.'notification',['notifications'=>$this->noti->getNoti('admin')]);
    $this->view->pageTitle='Notifications';
    $this->view->render();

  }
  public function getAdminNotification()
  {
    $this->model('Notification');
    $this->noti=$this->model->getModel(); 

   $result=$this->noti->getNoti('admin');

      return  json_encode(array("statusCode"=>200,"noti"=>$result,"count"=>$this->countUnread('admin')));

  }

  public function getNotification()
  {
  
   $result=$this->noti->getNoti(Session::get('userID'));

      return  json_encode(array("statusCode"=>200,"noti"=>$result,"count"=>$this->countUnread(Session::get('userID'))));

  }

  public function countUnread($uid)
  {

  
   $result=$this->noti->countUnreadNoti($uid);

      return  $result[0]['num'];

  }
  public function changeState($nid,$state)
  {

  
   $result=$this->noti->changeState([$state,$nid]);
  //  echo "<h1>".$result."</h1>";

      return   json_encode(array('statusCode'=>200));

  }

  public function readAll()
  {
  $result=$this->noti->makeAllRead([Session::get('userID')]);
      return   json_encode(array('statusCode'=>200));

  }



}
$noti=new NotificationController();
if(count($_POST)>0){
if($_POST['method']=="adminNoti"){

  echo $noti->getAdminNotification();
  }
  if($_POST['method']=="user"){
    if(Session::isAdmin())
       echo $noti->getAdminNotification();
    else
      echo $noti->getNotification();
    }
   
    if($_POST['method']=="changState")
      echo $noti->changeState($_POST['id'],$_POST['state']);

    if($_POST['method']=="readAll")
      echo $noti->readAll();

}

 ?>
