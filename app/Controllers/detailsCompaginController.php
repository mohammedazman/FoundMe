<?php
/**
 *
 */
class detailsCompaginController extends Controller
{
  private $details;

  public function index()
  {

  

    $this->view('home'.DIRECTORY_SEPARATOR.'detailsCompagin');
    $this->view->pageTitle='details Compagin';
    $this->view->render();

  }






















}

 ?>
