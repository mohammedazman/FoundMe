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
public function CheckImage($id)
{
  $oStmt = 'SELECT * FROM profiles WHERE user_id =? and name="image"';

      if ($this->db->QueryCrud($oStmt,[$id])) {
        return 1;
      }
      else {
        return 0;
      }

}

  //add new row to users table
  public function addImage(array $aData)
  {
    if ($this->CheckImage($aData[':id'])) {
      $oStmt = '
      UPDATE  profiles
               SET    value=:image
              WHERE user_id=:id and name="image" ';
          return $this->db->QueryCrud($oStmt,$aData,0);
      }

        $oStmt = 'INSERT INTO profiles ( name, value, user_id)
                  VALUES ( "image",:image,:id)';
            return $this->db->QueryCrud($oStmt,$aData,0);

}

  // find user by ID
public function FindUser(array $aData)
{
  $oStmt = 'SELECT * FROM profiles WHERE user_id =?';

      return $this->db->QueryCrud($oStmt,$aData);

}

// find user by ID
public function FindImage(array $aData)
{
$oStmt = 'SELECT image FROM profiles WHERE user_id =?';

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
                 SET   name=?, value=?
                WHERE user_id=? and name=? ';
        return $this->db->QueryCrud($oStmt,$aData,0);

}

//

public function find($aData)
{

   $oStmt ='SELECT * FROM profiles WHERE user_id =?';
    return $this->db->QueryCrud($oStmt,$aData);

}



public function getBio($aData)
{

   $oStmt ='SELECT * FROM profiles WHERE user_id =? and name = "bio"';
     if(sizeof($this->db->QueryCrud($oStmt,$aData))>0){
       return false;
     }else

     return true;

}


}


 ?>
