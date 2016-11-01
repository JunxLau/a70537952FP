<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 27-10-16
 * Time: 2:56 PM
 */


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
session_start();

$IncomeID = $_POST["IncomeID"];
$IncomeName = $_POST["IncomeName"];
$IncomeAmount = $_POST["IncomeAmount"];
$IncomeDescription = $_POST["IncomeDescription"];
$IncomeEnterDate = $_POST["IncomeEnterDate"];




if (isset($_SESSION["id"]) && isset($_SESSION["email"]) && isset($_SESSION["password"])) {

    $a = new UserModel();
    $jj = $a->Login($_SESSION["email"], $_SESSION["password"], $_SERVER["REMOTE_ADDR"]);

    if ($jj instanceof UserObject) {

        $incomeModel = new UserIncomeModel();
        $incomeModel->updateIncomeByIncomeID($IncomeID,$IncomeName,$IncomeAmount,$IncomeDescription,$IncomeEnterDate);

        header("Location:../../index.php");





    } else {
        echo "Error!" . mysql_error();
        session_unset();
        session_destroy();
        header("Location:../../index.php");
    }

// echo "已登录";
} else {
    session_unset();
    session_destroy();
    header("Location:../../index.php");
    // echo "未登录";
    //echo "请重新登录";
}