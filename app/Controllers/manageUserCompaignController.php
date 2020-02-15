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
    //delete Compaign
    public function delete($id)
    {
      // code...
      if ($this->compaignModel->addDelete([$id])) {
        Notification::addNoti('Request for delete compagin by '.$_SESSION['userName'] .'and need approvment','admin','delete compain');
        Message::setMessage(1,'main',' delete your compaing have be done ');
         Helper::back();

      }
    }






    public function uploadFiles(){
      if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $id=$_REQUEST['id'];


    $oldcompaign=$this->compaignModel->find([$id])[0];


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

                    $params=array(

            ':pending'=> 1,
              ':updates'=> json_encode(array(':title'=>!empty($_REQUEST['Title'])?$_REQUEST['Title']:$oldcompaign['title'],
                                            ':galary' =>!empty($this->filename)?$this->filename:$oldcompaign['galary'],
                                             ':descrption'=>!empty($_REQUEST['descrption'])?$_REQUEST['descrption']:$oldcompaign['descrption'],
                                              ':file'=> !empty($this->pdfFile)?$this->pdfFile:$oldcompaign['file'],
                                               ':tags'=>!empty($_REQUEST['Tags'])?$_REQUEST['Tags']:$oldcompaign['tags']	,
                                                 ':cost'=>!empty($_REQUEST['Amount'])?$_REQUEST['Amount']:$oldcompaign['cost'],
                                                  ':duration'=>!empty($_REQUEST['Deuration'])?$_REQUEST['Deuration']:$oldcompaign['duration']	  )),
                                                  ':id'=>$_REQUEST['id'] );

                         if ($this->compaignModel->update($params)) {

                          Notification::addNoti('Update compaign is require by '.$_SESSION['userName'] .'and need approvment','admin','new compain');
                           Message::setMessage(1,'main',' update your compaing have be done ');
                             echo 'your compain added successfully';
                           }else {
                             echo 'Error ! Pleas Try Again';
                           }



       exit();


    }



}



}
 ?>
