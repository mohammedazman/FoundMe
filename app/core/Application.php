<?php
/**
 *
 */
 //class to
class Application
{
  protected $controller='homeController';
  protected $action='index';
  protected $params=[];
  public function __construct()
  {
    session_start();
    // echo $_SERVER['REQUEST_URI'];
// echo $this->controller,"<br>",$this->action,"<br>",print_r($this->params);

    $this->prepareURL();

    if (file_exists(CONTROLLER.$this->controller.'.php')) {
      if ($this->controller!='homeController' and !Session::isAdmin() ) {
        $this->controller=new homeController;
      call_user_func_array([$this->controller,'index'],$this->params);
      Message::setMessage('msgState',0);
      Message::setMessage('main','لاتملك صلاحية وصول');
      }
      else {

              $this->controller=new $this->controller;
            if (method_exists($this->controller,$this->action)) {

              call_user_func_array([$this->controller,$this->action],$this->params);
            }
            else {
              call_user_func_array([$this->controller,'index'],$this->params);
            }
      }


    }
    else {
      $this->controller=new homeController;
    call_user_func_array([$this->controller,'index'],$this->params);
    }
  }
  #process of prepare url and take controller , action and another parameters and assign thim
  protected function prepareURL(){

    $request=trim($_SERVER['REQUEST_URI'],'/');

    if (!empty($request)) {
      $url=explode('/',$request);
      $this->controller=isset($url[0])?$url[0].'Controller':'homeController';
      $this->action=isset($url[1])?$url[1]:'index';

      unset($url[0],$url[1]);

      $this->params=!empty($url)?array_values($url):[];
    }

  }
}


 ?>
