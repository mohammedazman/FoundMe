<?php

class Model{

    protected $model_file;
    // protected $model_data;
    protected $modelObj;

    public function __construct($model_file)
    {
        $this->model_file=$model_file;

    
    }

    public function getModel(){

        if (file_exists(MODEL. $this->model_file.'.php')) {

            require_once MODEL.$this->model_file.'.php';
            $this->modelObj= new $this->model_file;
              return $this->modelObj;
     }
}
}


