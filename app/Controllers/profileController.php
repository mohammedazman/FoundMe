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





$username=Helper::userName(Session::get('userID'));


    $this->view('home'.DIRECTORY_SEPARATOR.'profile',['profiles'=>$this->profile->FindUser([Session::get('userID')]),'username'=>$username]);
    $this->view->pageTitle='My Profile';
    $this->view->render();

  }



















}

 ?>
