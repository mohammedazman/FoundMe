<?php
/**
 *
 */

class Donations
{
  protected $db;
  // protected $inventory=[ ];

  function __construct()
  {
    $this->db=new DB();
  }
// return all row of table of donations
public function all()
{
  return $this->db->QueryCrud("SELECT * FROM `donations`");
}

//add new row to donations table
public function add(array $aData)
{

      $oStmt = 'INSERT INTO donations ( compigan_id,	user_id,	amount)
                VALUES ( :compigan_id,	:user_id,	:amount)';
          return $this->db->QueryCrud($oStmt,$aData,0);

  }

  // find donations by Compaign ID
public function CompaignDonations(array $aData)
{
  $oStmt = 'SELECT * FROM donations WHERE compigan_id =?';

      return $this->db->QueryCrud($oStmt,$aData);

}

// find donations by user ID
public function UserDonations(array $aData)
{
$oStmt = 'SELECT * FROM donations WHERE user_id =?';

    return $this->db->QueryCrud($oStmt,$aData);

}

//
public function delete($id)
{
  $oStmt = 'DELETE FROM donations WHERE id=?';

      return $this->db->QueryCrud($oStmt,$id);
}


//

public function update($aData)
{
        $oStmt = 'UPDATE  donations
                 SET   compigan_id=?,	user_id=?,	amount=?
                WHERE id=?';
        return $this->db->QueryCrud($oStmt,$aData,0);

}

//

public function find($aData)
{

   $oStmt ='SELECT * FROM donations WHERE id =?';
    return $this->db->QueryCrud($oStmt,$aData);

}

//
public function countDonars()
{
  return $this->db->QueryCrud("SELECT COUNT(*) as count from donations")[0];
}
//
public function SumDonars()
{
  return $this->db->QueryCrud("SELECT SUM(amount) as sum from donations")[0];
}


}


 ?>
