<?php
/**
 *
 */
class manageUserCompaignController extends Controller
{

    private $compaignModel;
    private $pdfFile;
    private $filename;

    public function __construct()
    {
      $this->model('Compaign');
      $this->compaignModel=$this->model->getModel();
    }

    //
    public function index($id='')
    {
      $compaign=$this->compaignModel->find([$id]);
      $this->view('home'.DIRECTORY_SEPARATOR.'editCompaign',['compaign'=>$compaign]);
      $this->view->pageTitle='Pinding Users';
      $this->view->render();



    }






    public function uploadFiles(){
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $id=$_REQUEST['id'];


    $this->pdfFile=$this->compaignModel->find([$id])[0]['file'];
    $this->filename=$this->compaignModel->find([$id])[0]['galary'];

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

         // check if there submit


          if (1==1) {

                    $params=array(

                            ':pending'=> 1,
                              ':updates'=> json_encode(array('title'=> $_REQUEST['Title'],
                              'galary' =>$this->filename,
                               'descrption'=> $_REQUEST['descrption'],
                                'file'=> isset($pdfFile)?$this->pdfFile:'',
                                 'tags'=>$_REQUEST['Tags']	,
                                   'cost'=>$_REQUEST['Amount']		,
                                    'duration'=>$_REQUEST['Deuration']	  )),
                            ':id'=>$_REQUEST['id'] );

                         if ($this->compaignModel->update($params)) {

                          Notification::addNoti('Update compaign is require by '.$_SESSION['userName'] .'and need approvment','admin','new compain');
                           Message::setMessage(1,'main',' update your compaing have be done ');

                                                  }
                                                }
    }
       echo 'your compain added successfully';
       exit();


    }



}



}
 ?>
