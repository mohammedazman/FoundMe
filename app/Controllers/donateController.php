<?php
/**
 *
 */
class donateController extends Controller
{
  private $details;

  public function index()
  {

  

    $this->view('home'.DIRECTORY_SEPARATOR.'donate');
    $this->view->pageTitle='donate';
    $this->view->render();

  }






















}

 ?>
