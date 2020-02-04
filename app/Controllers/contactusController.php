<?php
/**
 *
 */
class contactusController extends Controller
{
  private $details;

  public function index()
  {

  

    $this->view('home'.DIRECTORY_SEPARATOR.'contactus');
    $this->view->pageTitle='contactus';
    $this->view->render();

  }






















}

 ?>
