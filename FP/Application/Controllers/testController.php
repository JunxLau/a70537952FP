<?php



spl_autoload_register(function ($class) {


    if (strpos($class, "Base") === 0) {
        require '../Framework/' . $class . '.php';
    } else if (strpos($class, "Model")) {
        require '../Models/' . $class . '.php';
    } else if (strpos($class, "Object")) {
        require '../Objects/' . $class . '.php';
    }else{
        require "../../Helper/".$class.".php";
    }

});


$a = new UserModel();
$code = $a->setVerificationCode("a70537952@gmail.com");
echo $code ;

//$user = $a->Register("aaa","bbb","123","20-10-2016","Male","1234@gmail.com","Singapore","22.22.22.22","Student");


// $_SERVER['REMOTE_ADDR'];



/*
echo "<img src=\"../../Public/uploads/".$user->UserImage."\"/>";
*/

