<?php

/**
 *
 */
class Validation
{

  function __construct()
  {

  }
  public static function required($input=[])
  {
    $error='all field ok';
    $status=1;
    foreach ($_REQUEST as $key => $value) {

      if (array_search($key,$input)) {
      if (empty($value)) {
        $error="يجب تضمين ال  ".$key;

        Message::setMessage(0,'main','يجب ملاء جميع الحقول');
        Message::setMessage($key,$error);
        $status=0;
        return(['status'=>$status]);

      }
      }

    }
    return (['status'=>$status,'error'=>$error]);
  }
}


 ?>
