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

      $oStmt = $this->db->preparation('INSERT INTO users ( email, username, password, type, status)
                                                  VALUES ( :email, :username, :password, :type, :status)');

          return $oStmt->execute($aData);

  }

  // find user by ID
public function checkLogin(array $aData)
{
  $oStmt = $this->db->preparation('SELECT * FROM users WHERE email =:email AND password =:password ');
$oStmt->execute($aData);
      return $oStmt->fetch();

}

//
public function delete($id)
{
  $oStmt = $this->db->preparation('DELETE FROM users WHERE id=?');

      return $oStmt->execute($id);
}


//

public function update($aData)
{
        $oStmt = $this->db->preparation('UPDATE  users
                                        SET   email=:email, username=:username, password=:password, type=:type, status=:status
                                        WHERE id=:id ');
        return $oStmt->execute($aData);

}

//

public function find($aData)
{
  $oStmt = $this->db->preparation('SELECT * FROM users WHERE id =?');
$oStmt->execute($aData);
      return $oStmt->fetch();

}


}


 ?>
