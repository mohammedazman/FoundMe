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
            $view='<h3 class="text-danger text-center"> <strong>عذراء ! : </strong>'.Message::getMessage($key).'</h3>';
        }
        else {
          $view='<h4 class="text-danger"> <strong>عذراء ! : </strong>'.Message::getMessage($key).'</h4>';
        }

      break;

    case 1:
    if ($key='main') {
        $view='<h3 class="text-success text-center"> <strong>شكراء ! : </strong>'.Message::getMessage($key).'</h3>';
    }

      break;

  }
return $view;

}


}


 ?>
