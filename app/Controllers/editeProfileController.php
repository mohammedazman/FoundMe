<?php
/**
 *
 */
class editeProfileController extends Controller
{
  private $details;

  public function index()
  {
    $this->view('home'.DIRECTORY_SEPARATOR.'editeProfile');
    $this->view->pageTitle='editeProfile';
    $this->view->render();
  }






















}

 ?>
