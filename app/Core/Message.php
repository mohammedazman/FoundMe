<?php

/**
 *
 */
abstract class Message

{
  function __construct()
  {

  }

  /**
   * @param $msg
   * @return null
   */

public static function getMessage($msg)
{
  if (Session::has($msg)) {
    $message=Session::get($msg);
    if ($msg!='msgState') {
        Session::delete($msg);
    }

    return $message;
  }
  else {
    return '';
  }

}


/**
 * @param $key
 * @param $msg
 */
public static function setMessage($msgst,$key,$msg)
{

  Session::set($key,$msg);
  Session::set('msgState',$msgst);

  

}

/**
 * @param $key
 * @return $view
 */
public static function check($key)
{
  $view='';
  #check if state of Message is exit or return null
  if (!Session::has('msgState')) {

    return '';
  }
  #check if state of Message is exit or return null
  if (!Session::has($key)) {

    return '';
  }

  switch (Message::getMessage('msgState')) {
    case 0:
        if ($key=='main') {
            $view=Message::getMessage($key);
        }
        else {
          $view='<h5 class="text-danger text-error"> <i class="fas fa-exclamation-circle error-icon"></i>'.Message::getMessage($key).'</h5>';
        }

      break;

    case 1:
    if ($key='main') {
        $view=Message::getMessage($key);
    }

      break;

  }
return $view;

}


}


 ?>
