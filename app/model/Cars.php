<?php
/**
 *
 */
class Cars
{
  protected static $data_file;
  protected $inventory=[ ];

  function __construct()
  {
       self::$data_file = DATA.'cars.txt';
  }
  public function load()
  {
    if (file_exists(DATA.'cars.txt')) {
      $this->inventory=file(DATA.'cars.txt');
    }
}
public function getCars()
{

  $this->load();
  return $this->inventory;
}
}


 ?>
