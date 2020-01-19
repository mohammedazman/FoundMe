<?php

/**
 *
 */
class carController extends Controller
{

  public function index()
  {
    $this->model('Cars');
    $this->view('car'.DIRECTORY_SEPARATOR.'index',['cars'=>$this->model->getCars()]);
    $this->view->pageTitle='This Page of Car Index';
    $this->view->render();

  }
}





















 ?>
