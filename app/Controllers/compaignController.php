<?php
/**
 *
 */
class compaignController extends Controller
{
private $compaign;
protected $valdition;

public function __construct()
{
  $this->model('Compaign');
  $this->compaign=$this->model->getModel();
  $this->validation=new Validation();

}

  public function index()
  {

    $this->view('home'.DIRECTORY_SEPARATOR.'addcompaign');
    $this->view->pageTitle='Add Compaign';
    $this->view->render();

  }


  public function addcompaign()
  {


    // check if there submit
    if ($_SERVER["REQUEST_METHOD"] == "POST") {


      $request= $this->validation->required(['Title','Tags','Amount','Deuration','gallery','file','descrption']);
      if ($_FILES)
      {



foreach ($_FILES as $key=>$files) {

  $upload = 1;

  $file = $files["name"];
  $file_tmp = $files["tmp_name"];
  $file_size = $files["size"];
  $target_dir = ROOT."public".DIRECTORY_SEPARATOR."uploads".DIRECTORY_SEPARATOR;

         if ($key=='file') {
           $pdfFile=Helper::uploadFile($target_dir, $file, $file_tmp, $file_size,$key);

         }
         else {
           //call  static uploadFile from Helper class  to do process of uploading and validation and return file name if sucess

           $filename= Helper::uploadFile($target_dir, $file, $file_tmp, $file_size,$key);


         }


  }
}



      if ($this->validation->GetStatus()==1) {

                $params=array(':owner_id' => 1 ,
                ':title'=> $request['data'][':Title'],
                ':galary' =>$filename,
                 ':descrption'=> $request['data'][':descrption'],
                 	':file'=> isset($pdfFile)?$pdfFile:'',
                   ':tags'=>$request['data'][':Tags']	,
                    ':status' =>0,
                     ':cost'=>$request['data'][':Amount']		,
                      ':duration'=>$request['data'][':Deuration']	 ,
                      	':pending'=> 0,
                        	':updates'=>null );




                     if ($this->compaign->add($params)) {



                       Message::setMessage(1,'main',' add your compaing have be done ');

                                              }
                                            }


}

    $this->view('home'.DIRECTORY_SEPARATOR.'addcompaign');
    $this->view->pageTitle='Add Compaign';
    $this->view->render();
    // check if there submit


  }




















}

 ?>
