<?php
/**
 *
 */
class NotificationController extends Controller
{

  public function index($id='',$name='')
  {



  }
  public function getAdminNotification()
  {

   $result=Notification::getNoti('admin');

      return  json_encode(array("statusCode"=>200,"noti"=>$result,"count"=>$this->countUnread('admin')));

  }

  public function getNotification()
  {

   $result=Notification::getNoti(Session::get('userID'));

      return  json_encode(array("statusCode"=>200,"noti"=>$result,"count"=>$this->countUnread(Session::get('userID'))));

  }

  public function countUnread($uid)
  {

   $result=Notification::countUnreadNoti($uid);

      return  $result[0]['num'];

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
   

}

 ?>
