<?php
/**
 *
 */
class profileController extends Controller
{
private $profile;

  public function index()
  {

   $this->model('Profiles');
   $this->profile=$this->model->getModel();

    $username=Helper::userName(Session::get('userID'));

    $this->view('home'.DIRECTORY_SEPARATOR.'profile',['profiles'=>$this->profile->FindUser([Session::get('userID')]),'compigan'=>$this->getUserCompaigns(Session::get('userID')),
                                                      'donations'=>$this->getUserDonations(Session::get('userID'))]);

    $this->view->pageTitle='My Profile';
    $this->view->render();

  }

  public  function getUserCompaigns($uid){
    $this->model('Compaign');
    $compaignModel=$this->model->getModel();

    $compaignsArray = $compaignModel->getUSerCompaigns([$uid]);
    return  $compaignsArray;

  }

  public  function getUserDonations($uid){
    $this->model('Donations');
    $donationModel=$this->model->getModel();
    $donationsArray=$donationModel->UserDonations([Session::get('userID')]);

    return  $donationsArray;

  }

  public function showProfile($uid)
  {
    $users=Helper::getUsersId();

    if(in_array($uid,$users)){

      $this->model('Profiles');
      $this->profile=$this->model->getModel();

    $this->view('home'.DIRECTORY_SEPARATOR.'profile',['profiles'=>$this->profile->FindUser([$uid]),'compigan'=>$this->getUserCompaigns($uid)]);
    $this->view->pageTitle='My Profile';
    $this->view->render();
    }
    else
     $this->index();

  }
















}

 ?>
