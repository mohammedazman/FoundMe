<?php
/**
 *
 */
class compaignController extends Controller
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
    $donors=$this->model->getModel()->CompaignDonations([$id]);
    $this->model('Comments');
    $comments=$this->model->getModel()->CompaignComments([$id]);

    $this->view('home'.DIRECTORY_SEPARATOR.'compaign',['compaign'=>$comp,'donors'=>$donors,'comments'=>$comments]);
    $this->view->pageTitle='View Compaign';
    $this->view->render();

  }



}

 ?>
