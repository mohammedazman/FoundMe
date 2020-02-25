<?php
/**
 *
 */
class faqsController extends Controller
{
  private $details;

  public function index()
  {
    $this->view('home'.DIRECTORY_SEPARATOR.'faqs');
    $this->view->pageTitle='faqs';
    $this->view->render();

  }






















}

 ?>
