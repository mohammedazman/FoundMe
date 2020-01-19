<?php

/**
 *
 */
class commentController extends Controller
{

  public function index()
  {
 $this->model('Comments');
    $this->view('admin'.DIRECTORY_SEPARATOR.'comment',['comments'=>$this->model->all()]);

    $this->view->pageTitle='admin category';
    $this->view->render();
}


public function add()
{
  // check if there submit
  if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $postErr=0;

//do validation to POST
   $validate=Validation::required(['','text_comment','user_id','news_id']);

    # add new record to the database

    if ($validate['status'] == 1)
    {
  # prepare the array of post to send it to News model to insert to news table

                    $comment= array(':user_id' => htmlentities($_REQUEST['user_id']),
                                   ':news_id' => htmlentities($_REQUEST['news_id']),
                                 ':text_com' => htmlentities($_REQUEST['text_comment']));



    $this->model('Comments');
  if ($this->model->add($comment)) {
    Message::setMessage('msgState',1);
    Message::setMessage('main',' تم اضافة اتعليق بنجاح');
  }

    }
  }
  $this->view('admin'.DIRECTORY_SEPARATOR.'addComment');

  $this->view->pageTitle='admin comments';
  $this->view->render();

}


//
public function delete($id)
{
$this->model('Comments');
$this->model->delete( array(0 => $id ));
Message::setMessage('status',1);
Message::setMessage('main','تم حذف الفئة بنجاح ّ!');
header('Location:/comment/index');

}

//
public function edit($id)
{
  if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $postErr=0;

//do validation to POST
   $validate=Validation::required(['','text_comment','user_id','news_id']);

    # add new record to the database

    if ($validate['status'] == 1)
    {
  # prepare the array of post to send it to News model to insert to news table

                    $comment= array(':user_id' => htmlentities($_REQUEST['user_id']),
                                   ':news_id' => htmlentities($_REQUEST['news_id']),
                                 ':text_com' => htmlentities($_REQUEST['text_comment']),
                               ':id'=>$id);



    $this->model('Comments');
  if ($this->model->update($comment)) {
    Message::setMessage('msgState',1);
    Message::setMessage('main',' تم تحديث التعليق بنجاح');
  }

    }
  }

$comment=isset($this->model)?$this->model: $this->model('Comments');


$this->view('admin'.DIRECTORY_SEPARATOR.'editComment',['comments'=>$comment->find( array(0 =>$id))]);
$this->view->pageTitle='this page of index';

$this->view->render();}








}





















 ?>
