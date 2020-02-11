<?php
/**
 *
 */
class editeProfileController extends Controller
{
private $profile;

public function __construct(){
  
  $this->model('Profiles');
  $this->profile=$this->model->getModel();
}

  public function index()
  {
    $username=Helper::userName(Session::get('userID'));
    $this->view('home'.DIRECTORY_SEPARATOR.'editeProfile',['editeProfile'=>$this->profile->FindUser([Session::get('userID')])]);
    $this->view->pageTitle='editeProfile';
    $this->view->render();
  }


  public function editProfile()
  {
    if ($_SERVER["REQUEST_METHOD"] == "POST"){
                   if ($this->modelObj->add($params)) {
                     $this->model('Profiles');
                     $profile=$this->model->getModel();

                     $profile->add(['First Name',$_REQUEST['first_name'],$this->modelObj->lastID()['id']]);
                     $profile->add(['Last Name',$_REQUEST['last_name'],$this->modelObj->lastID()['id']]);
                     $profile->add(['Phone',$_REQUEST['phone'],$this->modelObj->lastID()['id']]);
                      
                     Message::setMessage(1,'main',' Edit successfully');


                     }
                    }
                                            
  $this->view('home'.DIRECTORY_SEPARATOR.'editeProfile');
  $this->view->pageTitle='Edit Profile';
  $this->view->render();
}



















}

 ?>
