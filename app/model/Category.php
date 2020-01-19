<?php
/**
 *
 */

class Category
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
  return $this->db->query("select * from categories");
}



//

public function add(array $aData)
{

      $oStmt = $this->db->preparation('INSERT INTO categories ( cat_title) VALUES ( :title)');

          return $oStmt->execute($aData);

  }

  //
  public function delete($id)
  {
    $oStmt = $this->db->preparation('DELETE FROM categories WHERE id=?');

        return $oStmt->execute($id);
  }


  //

  public function update($aData)
  {
          $oStmt = $this->db->preparation('UPDATE  categories
                                          SET   cat_title=:title
                                          WHERE id=:id ');
          return $oStmt->execute($aData);

  }

  //

  public function find($aData)
  {
    $oStmt = $this->db->preparation('SELECT * FROM categories WHERE id =?');
  $oStmt->execute($aData);
        return $oStmt->fetch();

  }

}


 ?>
