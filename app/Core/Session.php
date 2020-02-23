<?php

abstract class Session
{
    /**
     * @param $key
     * @param $value
     */


    public static function set($key, $value)
    {
            $_SESSION[$key] = $value;

    }


    public static function loggIn(array $user)
    {
            $_SESSION['userID'] = $user[0]['id'];
            $_SESSION['userName'] = Helper::userName($_SESSION['userID']);
            $_SESSION['type'] = $user[0]['type'];


    }

    public static function AdminloggIn()
    {
            $_SESSION['userID'] = random_int(Helper::getLastUserID(),100000);
            $_SESSION['userName'] = 'Admin';
            $_SESSION['type'] = 'Admin';
            $_SESSION['Super'] = true;


    }
    public static function  logged()
    {

      if (self::has('userID')) {
          return $_SESSION['userID'];
      }
      return null;
    }

    /**
     * @param $key
     * @return null
     */
    public static function get($key)
    {
        if (self::has($key)) {
            return $_SESSION[$key];
        }
        return null;
    }

    /**
     * @param $key
     * @return bool
     */
    public static function has($key)
    {
        return isset($_SESSION[$key]);
    }

    /**
     * @param $key
     */
    public static function delete($key)
    {

        unset($_SESSION[$key]);
    }

    public static function isAdmin()
    {
      if (!isset($_SESSION['type'])) {
        return false;
      }


        if ($_SESSION['type']=='Admin') {
        return true;
        }
        else {
          return false;
        }
    }


    public static function getType()
    {
      if (!isset($_SESSION['type'])) {
        return false;
      }
      return $_SESSION['type'];

    }

    /**
     * destroy
     */
    public static function destroy()
    {

        session_unset();
        session_destroy();
    }
}
