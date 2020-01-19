<?php
/**
 *
 */

class News
{
  protected  $data_file;
  protected $db;
  protected $inventory=[ ];

  function __construct()
  {
       $this->db=new Model();
  }
// return all row of table of news
public function all()
{
  return $this->db->query("select * from news");
}

public function find($aData)
{
  $oStmt = $this->db->preparation('SELECT * FROM news WHERE id =?');
$oStmt->execute($aData);
      return $oStmt->fetch();

}

public function findCategory($aData)
{
  $oStmt = $this->db->preparation('SELECT * FROM news WHERE category =?');
$oStmt->execute($aData);
      return $oStmt->fetchAll();

}

//add new row to news table
public function add(array $aData)
{

      $oStmt = $this->db->preparation('INSERT INTO news ( title, text, picture, category, tags, analitics, url) VALUES ( :title, :content, :picture, :category, :tags, :analitics, :url)');

          return $oStmt->execute($aData);

  }

  public function findTags($aData)
  {
    $likeVar = "%".$aData[0] ."%";

    $oStmt = $this->db->preparation('SELECT * FROM news WHERE tags LIKE  ? ');
  $oStmt->execute( array(0 => $likeVar));

        return $oStmt->fetchAll();

  }
  public function delete($id)
  {
    $oStmt = $this->db->preparation('DELETE FROM news WHERE id=?');

        return $oStmt->execute($id);
  }
  public function update($aData)
  {

    if (isset($aData[':picture'])) {
        $oStmt = $this->db->preparation('UPDATE  news
                                          SET   title=:title, text=:content, picture=:picture, category=:category, tags=:tags, analitics=:analitics, url=:url
                                          WHERE id=:id ');
    }
    else {
      $oStmt = $this->db->preparation('UPDATE  news
                                        SET   title=:title, text=:content,category=:category, tags=:tags, analitics=:analitics, url=:url
                                        WHERE id=:id ');
    }


              return $oStmt->execute($aData);

      
  }


}


 ?>
