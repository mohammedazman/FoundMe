<?php
/**
 *
 */
class managecompaignController extends Controller
{

    private $userModel;

    public function __construct()
    {
      $this->model('Compaign');
      $this->compaignModel=$this->model->getModel();
    }
    public function index()
    {




    }
    public function ShowPindingCompaigns(){

      $this->view('cp'.DIRECTORY_SEPARATOR.'pindingCompaigns');
      $this->view->pageTitle='Pinding Users';
      $this->view->render();


    }

    public function ShowPindingUpdateCompaigns(){

      $this->view('cp'.DIRECTORY_SEPARATOR.'pindingUpdateCompaigns');
      $this->view->pageTitle='Pinding Update Users';
      $this->view->render();


    }

    public function ShowPindingDeleteCompaigns(){

      $this->view('cp'.DIRECTORY_SEPARATOR.'PindingDeleteCompaigns');
      $this->view->pageTitle='Pinding Update Users';
      $this->view->render();


    }


    public function ShowPausedCompaigns(){

      $this->view('cp'.DIRECTORY_SEPARATOR.'pausedCompaigns');
      $this->view->pageTitle='Paused Users';
      $this->view->render();


    }
    public function ShowFinshedCompaigns(){

      $this->view('cp'.DIRECTORY_SEPARATOR.'FinshedCompaigns');
      $this->view->pageTitle='Finshed Compaigns';
      $this->view->render();


    }
    public function ShowDeletedCompaigns(){
      $this->view('cp'.DIRECTORY_SEPARATOR.'deletedCompaigns');
      $this->view->pageTitle='Deleted Users';
      $this->view->render();

    }
    public function ShowActiveCompaigns(){

      $this->view('cp'.DIRECTORY_SEPARATOR.'activeCompaigns');
      $this->view->pageTitle='Active Compaigns';
      $this->view->render();

    }
    public function showCompaigns($state){

      // if state equal 6 for return pinding Update Compaigns
      if ($state==6) {
        $compaignsArray = $this->compaignModel->getPindingCompaigns([1]);
        return  json_encode(array("statusCode"=>200,"data"=>$compaignsArray));

      }

       // if state equal 8 for return pinding Delete Compaigns
      if ($state==8) {

        $compaignsArray = $this->compaignModel->getPindingCompaigns([2]);
        return  json_encode(array("statusCode"=>200,"data"=>$compaignsArray));

      }

     //  return all Compaigns depend on state
      $compaignsArray = $this->compaignModel->getCompaigns([$state]);

      $array=[];
      foreach ($compaignsArray as $key ) {
        $temp=array_merge($key,array('progress' =>Helper::getProgress($key['id'])  ));
        $array[]=$temp;
      }

      return  json_encode(array("statusCode"=>200,"data"=>$array));

    }

    // show all compaigns with load More
    public function showAllCompaigns($from,$to){
    $compaignsArray = $this->compaignModel->getAllCompaigns($from,$to);
  

      return  json_encode(array("statusCode"=>200,"data"=>$compaignsArray));

    }
    public function compare($id='')
    {
      $compaignsArray = $this->compaignModel->find([$id]);

      $this->view('cp'.DIRECTORY_SEPARATOR.'compareCompaigns',['compaign'=>$compaignsArray]);
      $this->view->pageTitle='compare Compaigns';
      $this->view->render();

    }
    public function update($action,$id)
    {
      $compaign = $this->compaignModel->find([$id])[0];
      $updateData=json_decode($compaign['updates'],true);
      $params=array(':pending' =>0 ,
                    ':updates'=>'',
                    ':id'=>$compaign['id']);
      if ($action=='approve') {
        $params=array_merge($params,$updateData);
        if ($this->compaignModel->approveUpdate($params)) {
          Notification::addNoti('Admin Approve your compaign update',$compaign['owner_id'],'Approve Update',$compaign['id']);
          Message::setMessage(1,'main',' Approve  Compaign Update Done successfully ');
          header('Location:/managecompaign/ShowPindingUpdateCompaigns');

        }
        else {
          Message::setMessage(2,'main',' There is Error pleas Try Again ');
          Helper::back();
        }


      }elseif ($action=='reject') {
        if ($this->compaignModel->update($params)) {
          Notification::addNoti('Admin Reject your compaign update',$compaign['owner_id'],'Reject Update',$compaign['id']);
            Message::setMessage(1,'main',' Reject  Compaign Update Done successfully ');
         header('Location:/managecompaign/ShowPindingUpdateCompaigns');
        }
        else {
          Message::setMessage(2,'main',' There is Error pleas Try Again ');
          Helper::back();
        }
      }
    }

public function getProgress($id)
{
  return  json_encode(array("statusCode"=>200,"data"=>Helper::getProgress($id)));


}

    public function changeCompaigns($ids,$state){
      // print_r($_POST);


      if($state==4 || $state==7)
        $nState=2;
      elseif($state==5 || $state==6 )
        $nState=0;
      else
      $nState=$state;

    $compaignID = $this->compaignModel->changeCompaigns([$nState,$ids]);

      $compArray = $this->compaignModel->find([$ids])[0];

           $noti_type=array('reject Compaign','','approve compaign','pause compaign','resum compaign','delete compaign','','active compaign');
           $noti_text=array('reject ','','approve ','pause ','resum ','delete ','','active ');
      if($state!=6)
           Notification::addNoti('Admin '.$noti_text[$state].'your compaign',$compArray['owner_id'],$noti_type[$state],$compArray['id']);
            // echo 'Admin '.$noti_text[$state].'your compaign'.$compArray['owner_id'].$noti_type[$state],$compArray['id'];
      return  json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));

    }

    public function changePindingCompaigns($ids,$state)
    {
      if ($state==0) {

        $this->compaignModel->changePinding([0,$ids]);
      return  $this->changeCompaigns($ids,5);

      }
      else {
        $compArray = $this->compaignModel->find([$ids])[0];
        if ($this->compaignModel->changePinding([0,$ids])) {
        Notification::addNoti('Admin Reject your compaign Delete',$compArray['owner_id'],'Reject Delete',$compArray['id']);
          Message::setMessage(1,'main',' Reject Request for Delete compaing have be done ');
          return  json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));


        }

      }
    }



}

$manage=new managecompaignController();
/* value of type have multi sitution
if 0 is ShowDeletedCompaigns
if 1 is ShowPindingCompaigns
if 2 is ShowActiveCompaigns
if 3 is ShowPausedCompaigns
if 4 is for delete or reject Compaign
if 5 is for approve or active Compaign
if 6 is ShowPindingUpdateCompaigns
if 7 is for ShowActiveCompaigns with load more
if 8 is ShowPindingDeleteCompaigns
if 9 is for approve or reject Delete Compaign Request
if 10 is ShowFinshedCompaigns
if 11 is to get progress

  */
  if(count($_POST)>0){
    $type=$_POST['type'];
  switch ($type) {
    case 0:
    echo $manage->showCompaigns($type);
      break;
    case 1:
    echo $manage->showCompaigns($type);
      break;
    case 2:
    echo $manage->showCompaigns($type);
      break;
    case 3:
    echo $manage->showCompaigns($type);
      break;
    case 4:
    echo $manage->changeCompaigns($_POST['ids'],$_POST['state']);
      break;
    case 5:
    echo $manage->changeCompaigns($_POST['ids'],$_POST['state']);
      break;
    case 6:
    echo $manage->showCompaigns($type);
      break;
    case 7:
    echo $manage->showAllCompaigns($_POST['from'],$_POST['to']);
      break;
    case 8:
   echo $manage->showCompaigns($type);
      break;
    case 9:
   echo $manage->changePindingCompaigns($_POST['ids'],$_POST['state']);
      break;
   case 10:
   echo $manage->showCompaigns(4);
   break;
   case 11:
   echo $manage->getProgress($_POST['id']);
   break;


  }



}
 ?>
