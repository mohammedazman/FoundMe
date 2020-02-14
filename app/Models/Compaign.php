<?php
/**
 *
 */

class Compaign
{
  protected $db;
  // protected $inventory=[ ];

  function __construct()
  {
    $this->db=new DB();
  }

  public function all()
  {
    return $this->db->QueryCrud("select * from compigans");
  }

  //add new row to compigans table
  public function add(array $aData)
  {

        $oStmt = 'INSERT INTO compigans (owner_id ,title ,	galary , descrption ,	file , tags	, status , cost	, duration ,	pending ,	updates	)
                  VALUES ( :owner_id ,:title ,:galary , :descrption ,	:file , :tags	, :status , :cost	, :duration ,	:pending ,	:updates)';


            return $this->db->QueryCrud($oStmt,$aData,0);

    }


  //
  public function delete($id)
  {
    $oStmt = 'DELETE FROM compigans WHERE id=?';

        return $this->db->QueryCrud($oStmt,$id,0);
  }


  //

  public function update($aData)
  {

          $oStmt = 'UPDATE  compigans
                   SET   	pending=:pending ,	updates=:updates
                  WHERE id=:id ';
          return $this->db->QueryCrud($oStmt,$aData,0);

  }

  //

  public function find($aData)
  {
    $oStmt = 'SELECT * FROM compigans WHERE id =?';
        return $this->db->QueryCrud($oStmt,$aData);

  }

  //

  public function changeCompaigns($args){
    $oStmt = 'update compigans set status=? WHERE id in (?)';


     return $this->db->QueryCrud($oStmt,$args,0);

}


// managecompaign
public function getCompaigns($args)
{


  $oStmt ='SELECT * FROM compigans where status=?';
  return  $this->db->QueryCrud($oStmt,$args);
}

// managecompaign
public function getUpdateCompaigns()
{

  return  $this->db->QueryCrud('SELECT * FROM compigans where pending=1');
}

public function getUSerCompaigns($args)
{


  $oStmt ='SELECT * FROM compigans where owner_id=?';
  return  $this->db->QueryCrud($oStmt,$args);
}




// search for compaigns by title
public function searchCompaign($args)
{
 $arg="%$args%";

  $oStmt ='SELECT * FROM compigans  WHERE title LIKE ? ';
  return  $this->db->QueryCrud($oStmt,[$arg]);
}

// search for compaigns by tags
public function searchTags($args)
{
 $arg="%$args%";

  $oStmt ='SELECT * FROM compigans  WHERE  tags LIKE ?';
  return  $this->db->QueryCrud($oStmt,[$arg]);
}

public function allTags()
{
$tags=[];
$count=0;
$compaigns=$this->all();
foreach ($compaigns as $key => $value) {
    $tags=array_unique(array_merge($tags,Helper::tags($value['tags'])));
}
return $tags;
}

//
public function countCompaigns()
{
  return $this->db->QueryCrud("SELECT COUNT(*) as count from compigans")[0];
}

// approve update

public function approveUpdate($aData)
{

        $oStmt = 'UPDATE  compigans
                 SET   title=:title ,	galary=:galary ,
                        descrption=:descrption ,	file=:file ,
                        tags=:tags, cost=:cost	, duration=:duration ,
                      	pending=:pending ,	updates=:updates
                WHERE id=:id ';
        return $this->db->QueryCrud($oStmt,$aData,0);

}

}
  ?>
