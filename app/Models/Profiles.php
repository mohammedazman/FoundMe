<?php
/**
 *
 */

class Profiles
{
  protected  $data_file;
  protected $db;
  protected $inventory=[ ];

  function __construct()
  {
       $this->db=new Model();
  }
// return all row of table of users
public function all()
{
  return $this->db->query("SELECT * FROM `profiles`");
}

//add new row to users table
public function add(array $aData)
{

      $oStmt = 'INSERT INTO profiles ( name, value, user_id)
                VALUES ( :name, :value, :user_id)';

          return $this->db->execution($oStmt,$aData);

  }

  // find user by ID
public function checkLogin(array $aData)
{
  $oStmt = 'SELECT * FROM profiles WHERE email =:email AND password =:password ';

      return $this->db->execution($oStmt,$aData)->fetch();

}

//
public function delete($id)
{
  $oStmt = 'DELETE FROM profiles WHERE id=?';

      return $this->db->execution($oStmt,$id);
}


//

public function update($aData)
{
        $oStmt = 'UPDATE  profiles
                 SET   name=:name, value=:value
                WHERE id=:id ';
        return $this->db->execution($oStmt,$aData);

}

//

public function find($aData)
{


  $oStmt = $this->db->preparation('SELECT * FROM profiles WHERE id =?');
$oStmt->execute($aData);
      return $oStmt->fetch();

}


}


 ?>
