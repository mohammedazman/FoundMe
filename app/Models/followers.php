<?php
/**
 *
 */

class Followers
{
  protected $db;
  // protected $inventory=[ ];

  function __construct()
  {
    $this->db=new DB();
  }


//add new row to fllowers table
public function addFoloow(array $aData)
{

      $oStmt = 'INSERT INTO followers (user_id, compigan_id)
                VALUES (?,?)';
          return $this->db->QueryCrud($oStmt,$aData,0);

  }

  // delete new row to fllowers table

  public function delFololow(array $aData)
{

      $oStmt = 'DELETE FROM followers WHERE user_id=? and compigan_id=?';
                return $this->db->QueryCrud($oStmt,$aData,0);

  }

  // find followers by Compaign ID
public function CompaignFollowers(array $aData)
{
  $oStmt = 'SELECT user_id FROM followers WHERE compigan_id  =?';

      $followers= $this->db->QueryCrud($oStmt,$aData);
      $return=array();
      foreach($followers as $f){
        $return[]=$f['user_id'];
      }
      return $return;

}


}


 ?>
