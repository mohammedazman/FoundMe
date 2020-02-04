<?php
/**
 *
 */
class allcompaginController extends Controller
{
  private $details;

  public function index()
  {

  

    $this->view('home'.DIRECTORY_SEPARATOR.'allcompagin');
    $this->view->pageTitle='allcompagin';
    $this->view->render();

  }






















}

 ?>
