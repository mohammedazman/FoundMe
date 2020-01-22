<?php
/**
 *
 */

class Profiles
{
  protected $db;
  // protected $inventory=[ ];

  function __construct()
  {
    $this->db=new DB();
  }
// return all row of table of users
public function all()
{
  return $this->db->QueryCrud("SELECT * FROM `profiles`");
}

//add new row to users table
public function add(array $aData)
{

      $oStmt = 'INSERT INTO profiles ( name, value, user_id)
                VALUES ( ?,?,?)';
          return $this->db->QueryCrud($oStmt,$aData,0);

  }

  // find user by ID
public function FindUser(array $aData)
{
  $oStmt = 'SELECT * FROM profiles WHERE user_id =?';

      return $this->db->QueryCrud($oStmt,$aData);

}

//
public function delete($id)
{
  $oStmt = 'DELETE FROM profiles WHERE id=?';

      return $this->db->QueryCrud($oStmt,$id);
}


//

public function update($aData)
{
        $oStmt = 'UPDATE  profiles
                 SET   name=:name, value=:value
                WHERE id=?';
        return $this->db->QueryCrud($oStmt,$aData,0);

}

//

public function find($aData)
{

   $oStmt ='SELECT * FROM profiles WHERE id =?';
    return $this->db->QueryCrud($oStmt,$aData);

}


}


 ?>
