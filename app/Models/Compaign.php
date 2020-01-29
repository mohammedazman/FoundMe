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
                   SET   owner_id=? ,title=? ,	galary=? , descrption=? ,	file=? , tags=?	, status=? , cost=?	, duration=? ,	pending=? ,	updates=?
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

}
  ?>
