<?php
/**
 *
 */
class aboutusController extends Controller
{
  private $details;

  public function index()
  {
    $this->view('home'.DIRECTORY_SEPARATOR.'aboutus');
    $this->view->pageTitle='aboutus';
    $this->view->render();

  }






















}

 ?>
