<?php
/**
 *
 */
class profileController extends Controller
{
private $profile;

  public function index()
  {

   $this->model('Profiles');
   $this->profile=$this->model->getModel();
   echo Session::get('userID');
    $this->view('home'.DIRECTORY_SEPARATOR.'profile',['profiles'=>$this->profile->FindUser([Session::get('userID')])]);
    $this->view->pageTitle='My Profile';
    $this->view->render();

  }



















}

 ?>
