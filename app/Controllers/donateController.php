<?php
/**
 *
 */
class donateController extends Controller
{
  private $details;

  public function index($id='')
  {

     $this->model("Compaign");
     $compaign=$this->model->getModel()->find([$id]);
     $this->model('Donations');
     $donars=$this->model->getModel()->CompaignDonations([$id]);

    $this->view('home'.DIRECTORY_SEPARATOR.'donate',['compaign'=>$compaign,'donars'=>$donars]);
    $this->view->pageTitle='donate';
    $this->view->render();

  }






















}

 ?>
