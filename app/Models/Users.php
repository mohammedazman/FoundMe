<?php
/**
 *
 */

class Users
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
  return $this->db->QueryCrud("select * from users");
}

//add new row to users table
public function add(array $aData)
{

      $oStmt = 'INSERT INTO users (email,password, status, type)
                VALUES ( ?, ?, ?, ?)';


          return $this->db->QueryCrud($oStmt,$aData,0);

  }

  // for check login
public function checkLogin(array $aData)

{
  $oStmt ='SELECT * FROM users WHERE email =? AND password =? ';
  return  $this->db->QueryCrud($oStmt,$aData);
}

//
public function delete($id)
{
  $oStmt = 'DELETE FROM users WHERE id=?';

      return $this->db->QueryCrud($oStmt,$id,0);
}


//

public function update($aData)
{
        $oStmt = 'UPDATE  users
                 SET   email=?, username=?, password=?, type=?, status=?
                WHERE id=? ';
        return $this->db->QueryCrud($oStmt,$aData,0);

}

//

public function find($aData)
{
  $oStmt = 'SELECT * FROM users WHERE id =?';
      return $this->db->QueryCrud($oStmt,$aData);

}

public static function lastID()
{

  $oStmt ='SELECT MAX(id) as id FROM users ';
        return $this->db->QueryCrud($oStmt)[0];
}

  // manageusers
  public function getUsers($args)
  {


    $oStmt ='SELECT * FROM users where status=?';
    return  $this->db->QueryCrud($oStmt,$args);
  }



  //delete manage users

  public function deleteUsers($args){
    $oStmt = 'update users set status=? WHERE id in (?)';


    return $this->db->QueryCrud($oStmt,$args,0);
}

// for check if email is exist
public function checkEmail(array $aData)

{
  $oStmt ='SELECT email,status,id FROM users WHERE email =? ';
  return  $this->db->QueryCrud($oStmt,$aData);
}
public function changePass(array $aData)
{
  $oStmt ='update users set password=? WHERE id =? ';
  return  $this->db->QueryCrud($oStmt,$aData,0);
}
//
public function countUsers()
{
  return $this->db->QueryCrud("SELECT COUNT(*) as count from users")[0];
}

}

?>
