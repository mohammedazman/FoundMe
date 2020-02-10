<?php
/**
 *
 */
class adminController extends Controller
{
  private $follow;
  public function __construct()
  {
    $this->model('Followers');
    $this->follow=$this->model->getModel();
  }

  public function index($id='',$name='')
  {
    
  
  }
  public function follow($user_id,$compaign_id,$owner_id)
  {
    $this->follow->addFoloow([$user_id,$compaign_id]);
    Notification::addNoti('starting follow your compaign',$owner_id,'follow compaign',$compaign_id); 

  }
  public function unFollow($user_id,$compaign_id)
  {

    $this->follow->delFololow([$user_id,$compaign_id]);

  }
  public function getFollowers($compaign_id)
  {
    
    $this->follow->CompaignFollowers([$compaign_id]);

  }
  


}

 ?>
