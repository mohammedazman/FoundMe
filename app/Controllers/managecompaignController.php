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
    public function ShowPausedCompaigns(){

      $this->view('cp'.DIRECTORY_SEPARATOR.'pausedCompaigns');
      $this->view->pageTitle='Paused Users';
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

      $compaignsArray = $this->compaignModel->getCompaigns([$state]);
      return  json_encode(array("statusCode"=>200,"data"=>$compaignsArray));

    }
  

    public function changeCompaigns($ids,$state){

    $compaignID = $this->compaignModel->changeCompaigns([$state,$ids]);
      $compArray = $this->compaignModel->find([$ids])[0];


      Notification::addNoti('your compaign : '.$compArray["title"].'',$compArray['owner_id'],'aprroved compaign');

      return  json_encode(array("statusCode"=>200,"message"=>"Process done successfully"));

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
  */
if(count($_POST)>0){
  $type=$_POST['type'];
if($type<=3){

    echo $manage->showCompaigns($type);
    }

  elseif($type==4){
  // print_r($_POST);
  echo $manage->changeCompaigns($_POST['ids'],$_POST['state']);
  }

}
 ?>
