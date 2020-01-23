<?php
/**
 *
 */
class homeController extends Controller
{


  public function index($id='',$name='')
  {


    $this->view('home'.DIRECTORY_SEPARATOR.'index');
    $this->view->pageTitle='Found Me';
    $this->view->render();

  }






















}

 ?>
