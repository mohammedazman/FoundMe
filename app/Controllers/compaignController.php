<?php
/**
 *
 */
class compaignController extends Controller
{
private $compaign;
protected $valdition;
private $pdfFile;
private $filename;

public function __construct()
{
  $this->model('Compaign');
  $this->compaign=$this->model->getModel();
  $this->validation=new Validation();

}



public function uploadFiles(){
  foreach ($_FILES as $key=>$files) {
    $upload = 1;
    $file = $files["name"];
    $file_tmp = $files["tmp_name"];
    $file_size = $files["size"];
    $target_dir = ROOT."public".DIRECTORY_SEPARATOR."uploads".DIRECTORY_SEPARATOR;

   if ($key=='file') {

     $this->pdfFile=Helper::uploadFile($target_dir, $file, $file_tmp, $file_size,$key);

   }
   else {
     //call  static uploadFile from Helper class  to do process of uploading and validation and return file name if sucess

     $this->filename= Helper::uploadFile($target_dir, $file, $file_tmp, $file_size,$key);


   }
   }

     // check if there submit
     if ($_SERVER["REQUEST_METHOD"] == "POST") {

      if ($this->validation->GetStatus()==1) {

                $params=array(':owner_id' => !empty(Session::get('userID'))?Session::get('userID'):1 ,
                ':title'=> $_REQUEST['Title'],
                ':galary' =>!empty($this->filename)?$this->filename:'',
                 ':descrption'=> $_REQUEST['descrption'],
                 	':file'=> !empty($this->pdfFile)?$this->pdfFile:'',
                   ':tags'=>$_REQUEST['Tags']	,
                    ':status' =>1,
                     ':cost'=>$_REQUEST['Amount']		,
                      ':duration'=>$_REQUEST['Deuration']	 ,
                      	':pending'=> 0,
                          ':updates'=>null );
                          $idd=$this->compaign->add($params);
                          // print_r($params);

                     if ($idd) {

                      Notification::addNoti('New compaign is added by '.$_SESSION['userName'] .'and need approvment','admin','new compain',$idd[0]['idd']);
                       Message::setMessage(1,'main',' add your compaing have be done ');

                                              }
                                            }
}
   echo $idd[0]['idd'];
   exit();




}
  public function addcompaign()
  {

    if(Session::logged()  || !Session::isAdmin() ){
    $this->view('home'.DIRECTORY_SEPARATOR.'addcompaign');
    $this->view->pageTitle='Add Compaign';
    $this->view->render();}
    else
    header('Location:/home/index');


    // check if there submit
  }
}

 ?>
