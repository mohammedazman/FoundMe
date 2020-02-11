<?php
/**
 *
 */
class followController extends Controller
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
  public function follow($compaign_id,$owner_id)
  {
    $result=$this->follow->addFoloow([Session::get('userID'),$compaign_id]);
    Notification::addNoti(Session::get('userName').' start following your compaign',$owner_id,'follow compaign',$compaign_id); 
    if($result)
        return json_encode(array('statusCode'=>200));

  }
  public function unFollow($compaign_id)
  {
echo $compaign_id;
    $result=$this->follow->delFololow([Session::get('userID'),$compaign_id]);
    if($result)
    return json_encode(array('statusCode'=>200));

  }
  public function getFollowers($compaign_id)
  {
    
    $this->follow->CompaignFollowers([$compaign_id]);

  }
  


}
$follow=new followController();
if(count($_POST)>0){
if($_POST['method']=="follow"){

  echo $follow->follow($_POST['cid'],$_POST['owner']);
  }
  elseif($_POST['method']=="unfollow"){

    echo $follow->unFollow($_POST['cid']);
    }
}
 ?>
