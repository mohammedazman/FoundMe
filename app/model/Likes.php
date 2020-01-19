<?php
/**
 *
 */

class Likes
{
  protected  $data_file;
  protected $db;


  function __construct()
  {
       $this->db=new Model();
  }
//
public function all()
{
  return $this->db->query("select * from likes");
}

//

public function add(array $aData)
{

      $oStmt = $this->db->preparation('INSERT INTO likes ( commentId, userId, 	likes,	dislikes)
                                                  VALUES ( :commentId, :userId, 	:likes,	:dislikes)');

          return $oStmt->execute($aData);

  }

  //

  public function find($aData)
  {
    $oStmt = $this->db->preparation('SELECT * FROM likes WHERE id =?');
  $oStmt->execute($aData);
        return $oStmt->fetch();

  }

  //

  public function update($Data)
  {
    print_r($Data);
          $oStmt = $this->db->preparation('UPDATE Likes
                                           SET commentId=:commentId,userId=:userId,likes=:likes,dislikes=:dislikes
                                           WHERE id=:id ');

          return $oStmt->execute($Data);

  }

  //
  public function delete($id)
  {
    $oStmt = $this->db->preparation('DELETE FROM likes WHERE id=?');

        return $oStmt->execute($id);
  }

}


 ?>
