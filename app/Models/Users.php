<?php
/**
 *
 */

class Users
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
  return $this->db->query("select * from users");
}

//add new row to users table
public function add(array $aData)
{

      $oStmt = 'INSERT INTO users ( email,password, status, type)
                VALUES ( :email, :password, :status, :type)';

          return $this->db->execution($oStmt,$aData);

  }

  // for check log in
public function checkLogin(array $aData)
{


  $oStmt = $this->db->preparation('SELECT * FROM users WHERE email =:email AND password =:password ');
  $oStmt->execute($aData);
  return $oStmt->fetch();

}

//
public function delete($id)
{
  $oStmt = 'DELETE FROM users WHERE id=?';

      return $this->db->execution($oStmt,$id);
}


//

public function update($aData)
{
        $oStmt = 'UPDATE  users
                 SET   email=:email, username=:username, password=:password, type=:type, status=:status
                WHERE id=:id ';
        return $this->db->execution($oStmt,$aData);

}

//

public function find($aData)
{


  $oStmt = $this->db->preparation('SELECT * FROM users WHERE id =?');
$oStmt->execute($aData);
      return $oStmt->fetch();

}

public function lastID()
{

  $oStmt = $this->db->preparation('SELECT MAX(id) as id FROM users ');
$oStmt->execute();
      return $oStmt->fetch();



}


}


 ?>
