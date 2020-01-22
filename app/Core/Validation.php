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
    $data=[];
    $status=1;
    foreach ($_REQUEST as $key => $value) {

      if (array_search($key,$input)===0) {
              if (empty($value)) {
                $error="you most fill  ".$key;

                Message::setMessage(0,'main','you most fill all field');
                Message::setMessage(0,$key,$error);
                $status=0;
                return(['status'=>$status]);

              }
      }

      $data[':'.$key.'']=self::test_input($value);


    }
    return (['status'=>$status,'data'=>$data]);
  }


public static  function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }
}


 ?>
