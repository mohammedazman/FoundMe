<?php
/**
 * Application class  to start our app and routing by using request header
 *
 */
 //

class Application
{
  protected $controller='homeController';
  protected $action='index';
  protected $params=[];
  public function __construct()
  {
             $this->checkSession();

            $this->prepareURL();

            if (file_exists(CONTROLLER.$this->controller.'.php')) {

                            if (Privilege::init()->checkCont($this->controller) ) {

                                  $this->controller=new $this->controller;
                                  if(method_exists($this->controller,$this->action))
                                      call_user_func_array([$this->controller,$this->action],$this->params);
                                  else
                                      call_user_func_array([$this->controller,'index'],$this->params);
                            }
                            else
                           {
                                      $this->controller=new homeController;
                                      call_user_func_array([$this->controller,'index'],$this->params);

                                      Message::setMessage(0,'main','لاتملك صلاحية وصول');
                            }
              }
              else {
                    $this->controller=new errorpageController;
                    call_user_func_array([$this->controller,'index'],$this->params);
              }
  }# end of __construct


  #process of prepare url and take controller , action and another parameters and assign thim

  protected function prepareURL(){

    $request=trim($_SERVER['REQUEST_URI'],'/');


    if (!empty($request)) {
      $url=explode('/',$request);  # explode request by / and assign each element to url array

      $this->controller=isset($url[0])?$url[0].'Controller':'homeController';
      $this->action=isset($url[1])?$url[1]:'index';


       # delete controller and action from url array
      unset($url[0],$url[1]);

      $this->params=!empty($url)?array_values($url):[];


    } #end of if statement

  } #end of prepareURL function

// for check if the user active
public function checkSession()
{

  session_start();
  if (Session::logged()==null or Session::get('Super')) {
        return;
  }



  if (! Helper::checkStatus(Session::get('userID'))) {
    Session::destroy();
    return;
      }

}

}#end of Application class


 ?>
