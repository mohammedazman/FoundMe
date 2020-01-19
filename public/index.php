<?php
define('ROOT', dirname(__DIR__).DIRECTORY_SEPARATOR);
define('APP', ROOT.'app'.DIRECTORY_SEPARATOR);
define('VIEW', ROOT.'app'.DIRECTORY_SEPARATOR.'Views'.DIRECTORY_SEPARATOR);
define('MODEL', ROOT.'app'.DIRECTORY_SEPARATOR.'Models'.DIRECTORY_SEPARATOR);
define('LIB', ROOT.'app'.DIRECTORY_SEPARATOR.'lib'.DIRECTORY_SEPARATOR);
define('CORE', ROOT.'app'.DIRECTORY_SEPARATOR.'Core'.DIRECTORY_SEPARATOR);
define('CONTROLLER', ROOT.'app'.DIRECTORY_SEPARATOR.'Controllers'.DIRECTORY_SEPARATOR);
$modules=[APP,VIEW,MODEL,LIB,CORE,CONTROLLER];
set_include_path(get_include_path().PATH_SEPARATOR.implode(PATH_SEPARATOR,$modules));

spl_autoload_register('spl_autoload',false);



$app= new Application;








 ?>
