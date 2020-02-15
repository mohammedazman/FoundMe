<?php
/**
 *
 */

class Visits
{
  protected $db;
  // protected $inventory=[ ];

  function __construct()
  {
    $this->db=new DB();
  }
// return all row of table of visits
public function all()
{
  return $this->db->QueryCrud("SELECT * FROM `visits`");
}

//add new row to visits table
public function add(array $aData)
{

      $oStmt = 'INSERT INTO visits ( page,user_id,compaign_id)
                VALUES ( ?,?,?)';
          return $this->db->QueryCrud($oStmt,$aData,0);

  }


//
public function delete($id)
{
  $oStmt = 'DELETE FROM visitss WHERE id=?';

      return $this->db->QueryCrud($oStmt,$id);
}


//

public function update($aData)
{
        $oStmt = 'UPDATE  visitss
                 SET   page=?,user_id=?
                WHERE id=?';
        return $this->db->QueryCrud($oStmt,$aData,0);

}

//

public function find($aData)
{

   $oStmt ='SELECT * FROM visitss WHERE id =?';
    return $this->db->QueryCrud($oStmt,$aData);

}



//
public function countVisits()
{
  return $this->db->QueryCrud("SELECT COUNT(*) as count from visits")[0];
}

}


 ?>
