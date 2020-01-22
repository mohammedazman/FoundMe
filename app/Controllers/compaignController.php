<?php
/**
 *
 */
class compaignController extends Controller
{
private $compaign;

public function __construct()
{
  $this->model('Compaign');
  $this->compaign=$this->model->getModel();
}

  public function index()
  {

    $this->view('home'.DIRECTORY_SEPARATOR.'addcompaign');
    $this->view->pageTitle='Add Compaign';
    $this->view->render();

  }




















}

 ?>
