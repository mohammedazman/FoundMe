<?php
/**
 *
 */
class View
{
protected $view_file;
protected $view_data;
protected $visits;

function __construct($view_file,$view_data){

  $this->view_file=$view_file;
  $this->view_data=$view_data;
  $visit=new Model('Visits');
  $this->visits=$visit->getModel();




}
public function render()
{

  if (file_exists(VIEW.$this->view_file.'.phtml')) {

include VIEW.$this->view_file.'.phtml';
if ($this->getController()!='cp') {

    $this->visits->add([$this->view_file,Session::get('userID'),isset($compaign)?$compaign['id']:null]);
}

  }
}
public function getActionِِ()
{
  return (explode('\\',$this->view_file)[1]);
}
public function getController()
{
  return (explode('\\',$this->view_file)[0]=='cp'?'DashBoard':explode('\\',$this->view_file)[1]);
}
public function getControl()
{
  $request=trim($_SERVER['REQUEST_URI'],'/');
  return (explode('/',$request)[0]);
}




}






 ?>
