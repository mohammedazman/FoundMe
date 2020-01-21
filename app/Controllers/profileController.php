<?php
/**
 *
 */
class profileController extends Controller
{


  public function index()
  {


    $this->view('home'.DIRECTORY_SEPARATOR.'profile');
    $this->view->pageTitle='My Profile';
    $this->view->render();

  }



















}

 ?>
