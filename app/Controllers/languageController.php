<?php
/**
 *
 */
class languageController extends Controller
{


  public function index($id='',$name='')
  {
   
  }
  public function convertLang($lang,$dir){
    setcookie('lang', $lang, time() + (86400 * 30), "/"); 
    setcookie('dir', $dir, time() + (86400 * 30), "/"); 
    if(count($_COOKIE) > 0)
      echo json_encode(array('statusCode'=>200));

  }
  
}

$convert=new languageController();
if(count($_POST)>0){

  if($_POST['method']=='convertLang'){
   
    $convert->convertLang($_POST['lang'],$_POST['dir']);

    }
  }
 ?>
