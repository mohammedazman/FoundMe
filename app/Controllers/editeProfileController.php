
  <?php
  /**
   *
   */
  class editeProfileController extends Controller
  {
  private $profile;
  
  public function __construct(){
    
    $this->model('Profiles');
    $this->profile=$this->model->getModel();
  }
  
    public function index()
    {
      
    }
  
  
    public function editProfile($newinfo)
    {
      // print_r($newinfo);
      // print_r($_SESSION);
                       $this->model('Profiles');
                       $profile=$this->model->getModel();
  
                       $profile->update(['First Name',$newinfo['first_name'],Session::get('userID'),'First Name']);
                       $profile->update(['Last Name',$newinfo['last_name'],Session::get('userID'),'Last Name']);
                       $profile->update(['Phone',$newinfo['phone'],Session::get('userID'),'Phone']);
                       if($profile->getBio([Session::get('userID')])){
                       $profile->add(['Bio',$newinfo['bio'],Session::get('userID')]);
                       } else
                       {
                       $profile->update(['Bio',$newinfo['bio'],Session::get('userID'),'Bio']);
                       }
                       Message::setMessage(1,'main',' Edit successfully');
  
      return json_encode(array("statusCode"=>200,"message"=>"Process done successfully")); 
                                              
    
  
    
  }
  public function edit()

  {
    $username=Helper::userName(Session::get('userID'));
    $this->view('home'.DIRECTORY_SEPARATOR.'editeProfile',['editeProfile'=>$this->profile->FindUser([Session::get('userID')])]);
    $this->view->pageTitle='editeProfile';
    $this->view->render();
  }
  
  function stringToArray($formArray) {
  
    $returnArray =[];
    foreach ($formArray as $val){
        $input=explode('=',$val);
        $temp = str_replace("+"," ",$input[1]);
        $returnArray[$input[0]] = str_replace("%2B","+",$temp);
    }
    return $returnArray;
    }
  }
  
  $editprofile = new editeProfileController();
  if(count($_POST)>0){
    $method=$_POST['method'];
  if($method=="editProfile"){
      echo $editprofile->editProfile($editprofile->stringToArray(explode('&',$_POST['formData'])));
      }
  }
   ?>
  