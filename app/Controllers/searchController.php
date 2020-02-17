<?php
/**
 *
 */
class searchController extends Controller
{
  private $PopularSearchs;
  public function __construct()
  {
    $this->model('PopularSearchs');
    $this->PopularSearchs=$this->model->getModel();

  }


  public function index($value='')
  {


    $item=isset($_REQUEST['item'])?$_REQUEST['item']:'';
    $this->view('home'.DIRECTORY_SEPARATOR.'search',['item'=>$item]);
    $this->view->pageTitle='Find '.$item;
    $this->view->render();

  }




  public function livesearch($term='')
  {




    if(isset($term)) {
    $popular=$this->PopularSearchs->getPopularSearch($term);
        $liveResult = '';
        $liveTags= '';
        $size = count($popular);
        $thisIsCounter = -1;

        while ($thisIsCounter <= $size - 2) {
            $thisIsCounter++;

            $liveResult .= ' <p class="text-dark p-2 rounded  m-3 border border-white " >'. $popular[$thisIsCounter]['query'] .' <span class="fas fa-search float-right"></span> </p>';

        }
        echo $liveResult;

    }
  }




public function find($value='')
{
  $item=isset($_POST['item'])?$_POST['item']:'';

  if (empty($item)) {
    $this->index();
    return;
  }
  $this->model('Compaign');
  if($_POST['type']=='getCompaign'){
  $compaigns=$this->model->getModel()->searchCompaign($item);

    }
  if ($_POST['type']=='getTags') {
    $count=0;
    $compaigns=[];
  $compaign=  $this->model->getModel()->searchTags($item);

    foreach ($compaign as $key => $value) {
      $compaigns=array_merge($compaigns,Helper::tags($value['tags']));


    }

    }



  $this->PopularSearchs->addSearch($item);

  echo json_encode(array("statusCode"=>200,"data"=>$compaigns));
}













}

 ?>
