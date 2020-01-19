<?php

/**
 *
 */
class categoryController extends Controller
{

  public function index()
  {
$this->model('Category');
    $this->view('admin'.DIRECTORY_SEPARATOR.'category',['categories'=>$this->model->all()]);

    $this->view->pageTitle='admin category';
    $this->view->render();

  }




  public function add()
  {
    // check if there submit
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $postErr=0;

//do validation to POST
     $validate=Validation::required(['','title']);

      # add new record to the database

      if ($validate['status'] == 1)
      {
    # prepare the array of post to send it to News model to insert to news table

                      $category= array(':title' => htmlentities($_REQUEST['title']));



      $this->model('Category');
    if ($this->model->add($category)) {
      Message::setMessage('msgState',1);
      Message::setMessage('main',' تم اضفة الفئة بنجاح');
    }

      }
    }
    $this->view('admin'.DIRECTORY_SEPARATOR.'addCategory');

    $this->view->pageTitle='admin category';
    $this->view->render();

  }


//
public function delete($id)
{
  $this->model('Category');
  $this->model->delete( array(0 => $id ));
  Message::setMessage('status',1);
  Message::setMessage('main','تم حذف الفئة بنجاح ّ!');
  header('Location:/category/index');

}


//
public function edit($id)
{
  // check if there submit
  if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $postErr=0;


  //do validation to POST

   $validate=Validation::required(['','title']);



    # add new record to the database

    if ($validate['status'] == 1)
    {
  # prepare the array of post to send it to News model to insert to news table


                    $category= array(':title' => htmlentities($_REQUEST['title']),':id'=>$id);



    $this->model('Category');
    if ($this->model->update($category)) {
      Message::setMessage('msgState',1);
      Message::setMessage('main',' تم تحديث الفئة بنجاح');
    }
}

}


$category=isset($this->model)?$this->model: $this->model('Category');


$this->view('admin'.DIRECTORY_SEPARATOR.'editCategory',['categories'=>$category->find( array(0 =>$id))]);
$this->view->pageTitle='this page of index';

$this->view->render();}











}





















 ?>
