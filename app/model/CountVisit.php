<?php
/**
 *
 */

class CountVisit
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
  return $this->db->query("select * from count_visit");
}

//

public function add(array $aData)
{

      $oStmt = $this->db->preparation('INSERT INTO count_visit ( session_id, post_id)
                                                  VALUES ( :session_id, :post_id)');

          return $oStmt->execute($aData);

  }

  //

  public function find($aData)
  {
    $oStmt = $this->db->preparation('SELECT * FROM count_visit WHERE id =?');
  $oStmt->execute($aData);
        return $oStmt->fetch();

  }

  //

  public function update($aData)
  {
          $oStmt = $this->db->preparation('UPDATE  count_visit
                                          SET   session_id=:session_id, post_id=:post_id
                                          WHERE id=:id ');
          return $oStmt->execute($aData);

  }

  //
  public function delete($id)
  {
    $oStmt = $this->db->preparation('DELETE FROM count_visit WHERE id=?');

        return $oStmt->execute($id);
  }


}


 ?>
