<?php
/**
 *
 */
class tagsController extends Controller
{
  private $compaign;
  public function __construct()
  {
    $this->model('Compaign');
    $this->compaign=$this->model->getModel();
  }

  public function index($tag='')
  {


          $tags=$this->compaign->allTags();
          $this->view('home'.DIRECTORY_SEPARATOR.'allcompagin',['tags'=>$tags,'tag'=>$tag]);
          $this->view->pageTitle='allcompagin';
          $this->view->render();

  }

  public function findCompaign($tag='')
  {
    $tag=isset($_POST['item'])?$_POST['item']:'';
   
    $compaigns=$this->compaign->searchTags($tag);
    echo json_encode(array("statusCode"=>200,"data"=>$compaigns));

  }






















}

 ?>
