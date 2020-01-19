<?php

/**
 *
 */
class activityController extends Controller
{

  public function index()
  {
  $this->model('Likes');
    $this->view('admin'.DIRECTORY_SEPARATOR.'like',['likes'=>$this->model->all()]);

    $this->view->pageTitle='admin category';
    $this->view->render();
  }


//

  public function add()
  {
    // check if there submit
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $postErr=0;

  //do validation to POST
     $validate=Validation::required(['','commentId','userId','activity']);

      # add new record to the database

      if ($validate['status'] == 1)
      {
    # prepare the array of post to send it to News model to insert to news table

                      $data= array(':commentId' => htmlentities($_REQUEST['commentId']),
                                     ':userId' => htmlentities($_REQUEST['userId']),
                                   ':likes' => $_REQUEST['activity']==1?1:null,
                                   ':dislikes' => $_REQUEST['activity']==2?1:null);



      $this->model('Likes');
    if ($this->model->add($data)) {
      Message::setMessage('msgState',1);
      Message::setMessage('main',' تم اضافة اتعليق بنجاح');
    }

      }
    }
    $this->view('admin'.DIRECTORY_SEPARATOR.'addActivity');

    $this->view->pageTitle='admin activity';
    $this->view->render();

  }

  //

  public function delete($id)
  {
  $this->model('Likes');
  $this->model->delete( array(0 => $id ));
  Message::setMessage('status',1);
  Message::setMessage('main','تم حذف التفاعل بناجح ّ!');
  header('Location:/activity/index');

  }


  //
  public function edit($id)
  {
    // check if there submit
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
      $postErr=0;

  //do validation to POST
     $validate=Validation::required(['','commentId','userId','activity']);

      # add new record to the database

      if ($validate['status'] == 1)
      {
    # prepare the array of post to send it to News model to insert to news table

                      $data= array(':commentId' => htmlentities($_REQUEST['commentId']),
                                     ':userId' => htmlentities($_REQUEST['userId']),
                                   ':likes' => $_REQUEST['activity']==1?1:null,
                                   ':dislikes' => $_REQUEST['activity']==2?1:null,
                                   
                                  ':id'=>$id);



      $this->model('Likes');
    if ($this->model->update($data)) {
      Message::setMessage('msgState',1);
      Message::setMessage('main',' تم اضافة اتعليق بنجاح');
    }

      }
    }

  $activity=isset($this->model)?$this->model: $this->model('Likes');


  $this->view('admin'.DIRECTORY_SEPARATOR.'editActivity',['activities'=>$activity->find( array(0 =>$id))]);
  $this->view->pageTitle='this page of index';

  $this->view->render();}





}





















 ?>
