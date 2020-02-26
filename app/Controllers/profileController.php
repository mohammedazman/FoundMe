<?php
/**
 *
 */
class profileController extends Controller
{
private $profile;

  public function index()
  {
    if(!Session::logged())
    header('location:/home/index');


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

    $this->view('home'.DIRECTORY_SEPARATOR.'profile',['profiles'=>$this->profile->FindUser([$uid]),'compigan'=>$this->getUserCompaigns($uid),'donations'=>$this->getUserDonations($uid)]);
    $this->view->pageTitle='View Profile';
    $this->view->render();
    }
    else
     $this->index();

  }
  public function changeImage($value='')
  {
    $this->model('Profiles');
    $this->profile=$this->model->getModel();
    print_r($_FILES);
    if (!empty($_FILES)) {
      $upload = 1;
      $file = $_FILES["gallary"]["name"];
      $file_tmp = $_FILES["gallary"]["tmp_name"];
      $file_size = $_FILES["gallary"]["size"];
      $target_dir = ROOT."public".DIRECTORY_SEPARATOR."uploads".DIRECTORY_SEPARATOR;



       $imageFile=Helper::uploadFile($target_dir, $file, $file_tmp, $file_size,"gallary");

       $arrayImage = array(':image' =>$imageFile ,':id'=>Session::get('userID'));
       $this->profile->addImage($arrayImage);
       Message::setMessage(1,'main',' update your image have done ');
       Helper::Back();
     }

  }
}

 ?>
