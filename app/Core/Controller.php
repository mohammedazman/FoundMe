<?php
/**
 * parent class for all controllers to manage calling of view and model
 */
class Controller
{
  protected $view;
  protected $model;

  public function view($viewName,$data=[])
  {
    $this->view=new View($viewName,$data);
    return $this->view;
  }
  public function model($modelName)
  {
    $this->model=new Model($modelName);


  }
}


 ?>
