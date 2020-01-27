<?php
/**
 *
 */
class adminController extends Controller
{

  public function index($id='',$name='')
  {

    $this->view('cp'.DIRECTORY_SEPARATOR.'index');
    $this->view->pageTitle='Found Me Admin';
    $this->view->render();

  }



}

 ?>
