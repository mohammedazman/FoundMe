<?php
/**
 *
 */
class homeController extends Controller
{

  protected $modelObj;
  protected $object;

  public function index($id='',$name='')
  {

     $this->model('Compaign');
    $this->object= $this->model->getModel();
    $this->view('home'.DIRECTORY_SEPARATOR.'index',['populars'=>$this->object->getpopular(),'expireds'=>$this->object->getExpierd()]);
    $this->view->pageTitle='Found Me';
    $this->view->render();

  }



}

 ?>
