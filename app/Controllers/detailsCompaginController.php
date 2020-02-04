<?php
/**
 *
 */
class detailsCompaginController extends Controller
{
  private $details;

  public function index()
  {




    $comp=$this->compaign->find([$id]);
    $this->model('Donations');
    $donars=$this->model->getModel()->CompaignDonations([$id]);
    $this->model('Comments');
    $comments=$this->model->getModel()->CompaignComments([$id]);


    $this->view('home'.DIRECTORY_SEPARATOR.'detailsCompagin',['compaign'=>$comp,'donars'=>$donars,'comments'=>$comments]);
    $this->view->pageTitle='View Compaign';
    $this->view->render();

  }






















}

 ?>
