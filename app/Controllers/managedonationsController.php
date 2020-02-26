<?php
/**
 *
 */
class managedonationsController extends Controller
{

    private $donate;

    public function __construct()
    {
      $this->model('Donations');
      $this->donate=$this->model->getModel();
    }
    public function index()
    {
      // code...
    }
    public function showDonates()
    {

      $this->view('cp'.DIRECTORY_SEPARATOR.'allDonations');
      $this->view->pageTitle='All Donations';
      $this->view->render();




    }

    public function showDonations(){

      $donatesArray = $this->donate->all();


      return  json_encode(array("statusCode"=>200,"data"=>$donatesArray));

    }





}

$manage=new managedonationsController();
if(count($_POST)>0){

if($_POST['type']==1){

    echo $manage->showDonations();
  }




}
 ?>
