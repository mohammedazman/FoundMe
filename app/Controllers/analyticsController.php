<?php
/**
 *
 */
class analyticsController extends Controller
{
  private $users;
  private $donars;
  private $compaigns;
  private $visits;
  private $comments;

  public function __construct()
  {
    $this->model('Users');
    $this->users=$this->model->getModel();
    $this->model('Donations');
    $this->donars=$this->model->getModel();
    $this->model('Compaign');
    $this->compaigns=$this->model->getModel();
    $this->model('Visits');
    $this->visits=$this->model->getModel();
    $this->model('Comments');
    $this->comments=$this->model->getModel();




  }


  public function index($id='',$name='')
  {
    $this->view('cp'.DIRECTORY_SEPARATOR.'analytics',['users'=>$this->users->countUsers()['count'],
                                                      'donarsCount'=>$this->donars->countDonars()['count'],
                                                      'donarsSum'=>$this->donars->SumDonars()['sum'],
                                                      'compaigns'=>$this->compaigns->countCompaigns()['count'],
                                                      'visits'=>$this->visits->countVisits()['count'],
                                                      'comments'=>$this->comments->countComments()['count']  ]);
    $this->view->pageTitle='Analytics Found Me';
    $this->view->render();

  }



}

 ?>
