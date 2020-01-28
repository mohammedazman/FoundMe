<?php

/**
 * @param $key
 * @param $value
 * static class to manage privilege using array of roles with cournt user using session to check type of user
 * using singletone pattern to init instance of class with init function
 */

 class Privilege
{
    /**
     * @param $key
     * @param $value
     */
     private static $roles=['Admin'=>'adminController','Admin'=>'manageusersController','Admin'=>'adminController'];
     private static $user;
     private static $instance;

     public function __construct()
     {
       self::$user=Session::getType();

     }

     public static function checkCont($contr)
     {
       $status=1;

        # looping to check all element in array roles
       foreach (self::$roles as $key => $values) {

           # check if the controller is in roles

            if ($contr==$values ) {


                      # check if the cournt user match Controller in array roles
                      if ($key==self::$user){
                            $status=1;
                      }# end if
                      else {
                        $status=0;
                      }

          }# end if

}# end foreach

return $status;
   }

   # init instance of this class to allow access for all function like static function
     public static function init()
       {
         if ( is_null( self::$instance ) )
         {
           self::$instance = new self();
         }
         return self::$instance;
       }


}


 ?>
