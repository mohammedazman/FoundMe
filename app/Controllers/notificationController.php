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

      return  json_encode(array("statusCode"=>200,"noti"=>$result));

  }

  public function getNotification()
  {

   $result=Notification::getNoti(Session::get('userID'));

      return  json_encode(array("statusCode"=>200,"noti"=>$result));

  }



}
$noti=new NotificationController();
if(count($_POST)>0){

if($_POST['method']=="adminNoti"){

  echo $noti->getAdminNotification();
  }
  if($_POST['method']=="user"){

    echo $noti->getNotification();
    }

}

 ?>
