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


      $request= $this->validation->checkFild(
        ['Title'=>array(['required' => 'required', 'maxWords' => '5'])
        ,'Tags'=>array(['required' => 'required', 'maxWords' => '5'])
        ,'Amount'=>array(['required' => 'required', 'digit' => 'digit'])
        ,'Deuration'=>array(['required' => 'required','date'=>'date' ])
        ,'descrption'=>array(['required' => 'required','min'=>'20' ])]
      );
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

                $params=array(':owner_id' => !empty(Session::get('userID'))?Session::get('userID'):1 ,
                ':title'=> $_REQUEST['Title'],
                ':galary' =>$filename,
                 ':descrption'=> $_REQUEST['descrption'],
                 	':file'=> isset($pdfFile)?$pdfFile:'',
                   ':tags'=>$_REQUEST['Tags']	,
                    ':status' =>0,
                     ':cost'=>$_REQUEST['Amount']		,
                      ':duration'=>$_REQUEST['Deuration']	 ,
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
