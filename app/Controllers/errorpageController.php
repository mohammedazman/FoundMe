<?php
/**
 *
 */
class errorpageController extends Controller
{
  private $details;

  public function index()
  {

  

    $this->view('home'.DIRECTORY_SEPARATOR.'errorPage');
    $this->view->pageTitle='errorPage';
    $this->view->render();

  }






















}

 ?>
