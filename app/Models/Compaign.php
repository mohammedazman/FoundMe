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
    // $this->checkdate();
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
           SET   	status=4
          WHERE duration <= NOW() and status=2    ',[],0);
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


            if ($this->db->QueryCrud($oStmt,$aData,0))
                  return $this->db->QueryCrud('select max(id) as  idd from compigans ');

    }


  //
  public function delete($id)
  {
    $oStmt = 'DELETE FROM compigans WHERE id=?';

        return $this->db->QueryCrud($oStmt,$id,0);
  }


  //

  public function calProgress($campaigns){

    $campaignWithPRogress=array();

      foreach($campaigns as $camp){
        $camp['progress']=Helper::getProgress($camp['id']);
        $campaignWithPRogress[]=$camp;
      }
      return $campaignWithPRogress;


  }


  //



  public function getpopular()
{
  $oStmt ="SELECT c.id, owner_id, title, galary, descrption, file, tags,
   status, cost, duration, pending, updates, c.created_at, c.update_at,
    count(v.id) as visits from visits v,compigans c where c.id=v.compaign_id
    GROUP by compaign_id order by visits desc limit 0,3";
  return $this->calProgress($this->db->QueryCrud($oStmt));
}
//
public function getExpierd()
{
  $oStmt ="SELECT * FROM `compigans` WHERE `duration`LIKE '%2020-02-%' order by duration asc limit 0,3 ";
  return $this->calProgress($this->db->QueryCrud($oStmt));
}
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



  $oStmt ="SELECT * FROM compigans where status=2  ORDER BY created_at DESC LIMIT $from,$to";
  $campaignWithPRogress=[];

    $copmaigns=$this->db->QueryCrud($oStmt);

    foreach ($copmaigns as $key ) {

      $temp=array_merge($key,array('progress' =>Helper::getProgress($key['id']),
       'donars'=> Helper::getDonars($key['id']),'Fcost'=>Helper::NumberFormatter($key['cost'])));
      $campaignWithPRogress[]=$temp;
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
