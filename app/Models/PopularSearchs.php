<?php
/**
 *
 */

class PopularSearchs
{
  protected $db;
  // protected $inventory=[ ];

  function __construct()
  {
    $this->db=new DB();
  }
// return all row of table of popular_search
public function all()
{
  return $this->db->QueryCrud("SELECT * FROM `popular_search`");
}

//add new row to popular_search table
public function add(array $aData)
{

      $oStmt = 'INSERT INTO popular_search ( query)
                VALUES ( ?)';
          return $this->db->QueryCrud($oStmt,$aData,0);

  }





//
public function delete($id)
{
  $oStmt = 'DELETE FROM popular_search WHERE id=?';

      return $this->db->QueryCrud($oStmt,$id);
}


//

public function update($aData)
{
        $oStmt = 'UPDATE  popular_search
                 SET   query=?,	total_search=?
                WHERE id=?';
        return $this->db->QueryCrud($oStmt,$aData,0);

}

//

public function find($aData)
{

   $oStmt ='SELECT * FROM popular_search WHERE id =?';
    return $this->db->QueryCrud($oStmt,$aData);

}


  //
  public function getPopularSearch($aData)
  {

    $arg="%$aData%";


    $oStmt ='SELECT * FROM popular_search where query LIKE ? ORDER BY total_search DESC LIMIT 5';
    return  $this->db->QueryCrud($oStmt,[$arg]);
  }



  //

  public function addSearch($aData){
      $Data="$aData";

    $oStmt = 'SELECT * FROM popular_search where query LIKE ?';
    $cStmt=$this->db->QueryCrud($oStmt,[$Data]);

    if (empty($cStmt)) {

      $oStmt = 'INSERT INTO popular_search ( query)
                VALUES (?)';
          return $this->db->QueryCrud($oStmt,[$aData],0);
    }
    else {
      $oStmt = 'UPDATE  popular_search
               SET total_search=?
              WHERE id=?';
      return $this->db->QueryCrud($oStmt,[$cStmt[0]['total_search']+1,$cStmt[0]['id']],0);

    }


    return ;
}

}


 ?>
