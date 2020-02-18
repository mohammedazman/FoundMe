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
    $this->checkdate();
  }

// check if duration is finshed
function checkdate()
{
    $compArray=  $this->db->QueryCrud('SELECT *
               from   compigans
              WHERE duration <= NOW() and status!=4 ');
    foreach ($compArray as $comp) {
        Notification::addNoti('your compaign have be done',$comp['owner_id'],'finshed compaing',$comp['id']);
    }
  $this->db->QueryCrud('UPDATE  compigans
           SET   	status=?
          WHERE duration <= NOW() and status=2 ',[4],0);
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

  // change pending to 2 means that is Request for delete from owner

  public function addDelete($aData)
  {

          $oStmt = 'UPDATE  compigans
                   SET   	pending=2
                  WHERE id=? ';
          return $this->db->QueryCrud($oStmt,$aData,0);

  }

  // change pending to 2 means that is Request for delete from owner

  public function changePinding($aData)
  {

          $oStmt = 'UPDATE  compigans
                   SET   	pending=?
                  WHERE id=? ';
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
public function getAllCompaigns($from,$to)
{


  $oStmt ="SELECT * FROM compigans where status=2 LIMIT $from,$to";
  $campaignWithPRogress=array();

    $copmaigns=$this->db->QueryCrud($oStmt);
    foreach($copmaigns as $camp){
      $camp['progress']=Helper::getProgress($camp['id']);
      $campaignWithPRogress[]=$camp;
    }
    return $campaignWithPRogress;
     
}

// managecompaign
public function getPindingCompaigns($aData)
{

  return  $this->db->QueryCrud('SELECT * FROM compigans where pending=?',$aData);
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

  $oStmt ='SELECT * FROM compigans  WHERE title LIKE ? and status=2';
  return  $this->db->QueryCrud($oStmt,[$arg]);
}

// search for compaigns by tags
public function searchTags($args)
{
 $arg="%$args%";

  $oStmt ='SELECT * FROM compigans  WHERE  tags LIKE ? and status=2';
  $campaignWithPRogress=array();

  $copmaigns=$this->db->QueryCrud($oStmt,[$arg]);
  foreach($copmaigns as $camp){
    $camp['progress']=Helper::getProgress($camp['id']);
    $campaignWithPRogress[]=$camp;
  }
  return $campaignWithPRogress;
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
