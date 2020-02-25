<?php

class DB {
      protected $pdoObject;
      private static $instance;

      const DBUSER = 'root';
      const DBPASS = '';
      const DNS="mysql:host=localhost;dbname=foundMe;charset=UTF8";

      public function __construct() {
        try {
          $this->pdoObject=new PDO(DB::DNS,DB::DBUSER,DB::DBPASS);
          $this->pdoObject->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE,PDO::FETCH_ASSOC);
          $this->pdoObject->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
          } catch (PDOException $e) {
              echo 'Connection failed: ' . $e->getMessage();
             }

          if( !$this->pdoObject ) {
              throw new Exception('Could not connect to DB ');
          }
      }

      public static function init()
    {
      if ( is_null( self::$instance ) )
      {
        self::$instance = new self();
      }
      return self::$instance;
    }

      public function escape($str){
          return $this->pdoObject->quote($str);
      }


      public function QueryCrud ($sql,$args=array(),$type=1){
        $query=$this->pdoObject->prepare($sql);
        $query->execute($args);
        // echo $sql;
        // print_r($args);
        if($type){
          $data=$query->fetchAll();
        // // echo"$sql"."<br>";
        // // print_r($args);        // if(sizeof($data)>0)
        // {
               return $data;
        }
        else
            return $this->pdoObject->lastInsertId();
    }
    public function LastID()
    {
      return $this->pdoObject->lastInsertId();
    }

}
