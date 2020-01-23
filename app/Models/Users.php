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

public function lastID()
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
    // echo 'update users set status='.$args[0].' WHERE id in ('.$args[1].')';
    // echo $oStmt;
    // print_r($args);

    return $this->db->QueryCrud($oStmt,$args,0);
}

}

?>