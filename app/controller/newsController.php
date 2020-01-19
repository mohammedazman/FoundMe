<?php

/**
 *
 */
class newsController extends Controller
{

  public function index()
  {
  $this->model('News');
    $this->view('admin'.DIRECTORY_SEPARATOR.'index',['news'=>$this->model->all()]);

    $this->view->pageTitle='admin index';
    $this->view->render();

  }

  public function back()
  {
    header('Location:'.$_SERVER['HTTP_REFERER']);
    exit;
  }

  public function delete($id)
  {
    $this->model('News');
    $this->model->delete( array(0 => $id ));
    Message::setMessage('status',1);
    Message::setMessage('main','تم حذف المقال بنجاح ّ!');
    header('Location:/admin/index');

  }


  public function edit($id)
  {
    // check if there submit
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $postErr=0;


    //do validation to POST

     $validate=Validation::required(['','category','title','text','title']);


        // check if there is file in posting and process the uploading
      if (!empty($_FILES["image"]["size"]))
      {

          $upload = 1;
          $file = $_FILES["image"]["name"];
          $file_tmp = $_FILES["image"]["tmp_name"];
          $file_size = $_FILES["image"]["size"];
          $target_dir = ROOT."public".DIRECTORY_SEPARATOR."pictures".DIRECTORY_SEPARATOR;
          //call  static uploadFile from Helper class  to do process of uploading and validation and return file name if sucess
          $filename = Helper::uploadFile($target_dir, $file, $file_tmp, $file_size);
      }

      # add new record to the database

      if ($validate['status'] == 1)
      {
    # prepare the array of post to send it to News model to insert to news table

                    if (isset($filename)) {
                      $post= array(':title' => htmlentities($_REQUEST['title']),
                                    ':content' => htmlentities($_REQUEST['text']),
                                    ':category' => htmlentities($_REQUEST['category']),
                                    ':picture' => !empty($filename)?$filename:"default.png",
                                    ':tags' => htmlentities($_REQUEST['tags']),
                                     ':analitics' => htmlentities(isset($_REQUEST['analytics'])?$_REQUEST['analytics']:null),
                                     ':url' => 'url',
                                    'id'=>$id );

                  } else {
                    $post= array(':title' => htmlentities($_REQUEST['title']),
                                  ':content' => htmlentities($_REQUEST['text']),
                                  ':category' => htmlentities($_REQUEST['category']),
                                  ':tags' => htmlentities($_REQUEST['tags']),
                                   ':analitics' => htmlentities(isset($_REQUEST['analytics'])?$_REQUEST['analytics']:null),
                                   ':url' => 'url',
                                  'id'=>$id );
                  }



      $this->model('News');
      if ($this->model->update($post)) {
        Message::setMessage('msgState',1);
        Message::setMessage('main','تم تحديث معلومات القال بنجاح');
      }
}
}
    $news= isset($this->model)?$this->model:$this->model('News');
    $category= $this->model('Category');


    $this->view('admin'.DIRECTORY_SEPARATOR.'editPost',['news'=>$news->find( array(0 =>$id)),'category'=>$category->all()]);
    $this->view->pageTitle='this page of index';

    $this->view->render();


}


//

public function add()
{
  // check if there submit
  if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $postErr=0;

//do validation to POST

   $validate=Validation::required(['','category','title','text','title']);


      // check if there is file in posting and process the uploading
    if ($_FILES)
    {
        $upload = 1;
        $file = $_FILES["fileToUpload"]["name"];
        $file_tmp = $_FILES["fileToUpload"]["tmp_name"];
        $file_size = $_FILES["fileToUpload"]["size"];
        $target_dir = ROOT."public".DIRECTORY_SEPARATOR."pictures".DIRECTORY_SEPARATOR;
        //call  static uploadFile from Helper class  to do process of uploading and validation and return file name if sucess
        $filename = Helper::uploadFile($target_dir, $file, $file_tmp, $file_size);
    }

    # add new record to the database

    if ($validate['status'] == 1)
    {
  # prepare the array of post to send it to News model to insert to news table


                  if (!empty($filename)) {
                    $post= array(':title' => htmlentities($_REQUEST['title']),
                                  ':content' => htmlentities($_REQUEST['text']),
                                  ':category' => htmlentities($_REQUEST['category']),
                                  ':picture' => $filename,
                                  ':tags' => htmlentities($_REQUEST['tags']),
                                   ':analitics' => htmlentities($_REQUEST['analytics']),
                                   ':url' => 'url' );

                } else {
                  $post= array(':title' => htmlentities($_REQUEST['title']),
                                ':content' => htmlentities($_REQUEST['text']),
                                ':category' => htmlentities($_REQUEST['category']),
                                ':picture' => "default.png",
                                ':tags' => htmlentities($_REQUEST['tags']),
                                 ':analitics' => htmlentities($_REQUEST['analytics']),
                                 ':url' => 'url' );
                }



    $this->model('News');
    $this->model->add($post);

    }


  }

  # show form view  to add row to news
  $this->model('Category');

      $this->view('admin'.DIRECTORY_SEPARATOR.'addNews',['category'=>$this->model->all()]);

      $this->view->pageTitle='This Page of news admin index';
      $this->view->render();
}














}







 ?>
