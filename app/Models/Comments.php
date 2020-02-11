<?php
/**
 *
 */

class Comments
{
  protected $db;
  // protected $inventory=[ ];

  function __construct()
  {
    $this->db=new DB();
  }
// return all row of table of comments
public function all()
{
  return $this->db->QueryCrud("SELECT * FROM `comments`");
}

//add new row to comments table
public function addcomment(array $aData)
{

      $oStmt = 'INSERT INTO comments ( user_id,	compigan_id,	message,	status)
                VALUES ( ?,?,?,?)';
          return $this->db->QueryCrud($oStmt,$aData,0);

  }

  // find comments by Compaign ID
public function CompaignComments(array $aData)
{
  $oStmt = 'SELECT * FROM comments WHERE compigan_id =?';

      return $this->db->QueryCrud($oStmt,$aData);

}

// find comments by user ID
public function UserComments(array $aData)
{
$oStmt = 'SELECT * FROM comments WHERE user_id =?';

    return $this->db->QueryCrud($oStmt,$aData);

}

//
public function delete($id)
{
  $oStmt = 'DELETE FROM comments WHERE id=?';

      return $this->db->QueryCrud($oStmt,$id);
}


//

public function update($aData)
{
        $oStmt = 'UPDATE  comments
                 SET   user_id=?,	compigan_id=?,	message=?,	status=?
                WHERE id=?';
        return $this->db->QueryCrud($oStmt,$aData,0);

}

//

public function find($aData)
{

   $oStmt ='SELECT * FROM comments WHERE id =?';
    return $this->db->QueryCrud($oStmt,$aData);

}


  // manageusers
  public function getComments($aData)
  {


    $oStmt ='SELECT * FROM comments where status=?';
    return  $this->db->QueryCrud($oStmt,$aData);
  }



  //delete manage users

  public function deleteComments($aData){
    $oStmt = 'update comments set status=? WHERE id in (?)';


    return $this->db->QueryCrud($oStmt,$aData,0);
}

//
public function countComments()
{
  return $this->db->QueryCrud("SELECT COUNT(*) as count from comments")[0];
}

}


 ?>
