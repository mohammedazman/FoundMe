<?php
/**
 *
 */
class donateController extends Controller
{
  private $details;
  protected $valdition;
  private $donars;
  public function __construct()
  {
    $this->model('Donations');
    $this->donar=$this->model->getModel();
    $this->validation=new Validation();

  }


  public function index($id='')
  {

         $this->model("Compaign");
         $compaign=$this->model->getModel()->find([$id]);

         $donars=$this->donar->CompaignDonations([$id]);

        $this->view('home'.DIRECTORY_SEPARATOR.'donate',['compaign'=>$compaign,'donars'=>$donars]);
        $this->view->pageTitle='donate';
        $this->view->render();
        // check if there submit

        if ($_SERVER["REQUEST_METHOD"] == "POST") {

         if ($this->validation->GetStatus()==1) {

                   $params=array(':compigan_id'=>$_REQUEST['compaign_id'],
                                 ':user_id'=>Session::get('userID'),
                     ':amount'=> $_REQUEST['Donation'],

                    );
                    $this->model('Compaign');
                    $comp=$this->model->getModel()->find([$_REQUEST['compaign_id']]);

                        if ($this->donar->add($params)) {

                         Notification::addNoti('New donar is added by '.$_SESSION['userName'] .'about:'.$params[":amount"].'$',$comp[0]['owner_id'],'add donation');
                          Message::setMessage(1,'main',' add your donation have be done ');

                                                 }
                                               }
    }

      exit();

  }






















}

 ?>
