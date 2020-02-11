<?php
/**
 *
 */
class viewCompaignController extends Controller
{
private $compaign;


public function __construct()
{
  $this->model('Compaign');
  $this->compaign=$this->model->getModel();


}

  public function show($id)
  {

    $comp=$this->compaign->find([$id]);
    $this->model('Donations');
    $donars=$this->model->getModel()->CompaignDonations([$id]);
    $this->model('Comments');
    $comments=$this->model->getModel()->CompaignComments([$id]);
    $this->model('Followers');
    $followers=$this->model->getModel()->CompaignFollowers([$id]);

    $this->view('home'.DIRECTORY_SEPARATOR.'detailsCompagin',['compaign'=>$comp,'donars'=>$donars,'comments'=>$comments,'followers'=>$followers]);
    $this->view->pageTitle='View Compaign';
    $this->view->render();

  }



}

 ?>
