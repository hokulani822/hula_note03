<?php
//DB接続関数
require_once("funcs.php");
$pdo = db_conn();

//1. POSTデータ取得
$name   = $_POST['name'];
$age    = $_POST['age'];
$tel    = $_POST['tel'];
$email  = $_POST['email'];
$hulareki = $_POST['hulareki'];
$halauname = $_POST['halauname'];
$id    = $_POST['id'];

//３．データ登録SQL作成
$stmt = $pdo->prepare("UPDATE 
gs_kadai_hula SET name = :name, age = :age, tel = :tel, email = :email, hulareki = :hulareki, halauname = :halauname, indate = now() 
WHERE id = :id;");

// 数値の場合 PDO::PARAM_INT
// 文字の場合 PDO::PARAM_STR
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':age', $age, PDO::PARAM_INT); //PARAM_INTなので注意
$stmt->bindValue(':tel', $tel, PDO::PARAM_STR); 
$stmt->bindValue(':email', $email, PDO::PARAM_STR);
$stmt->bindValue(':hulareki', $hulareki, PDO::PARAM_INT); //PARAM_INTなので注意
$stmt->bindValue(':halauname', $halauname, PDO::PARAM_STR);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute(); //実行

//４．データ登録処理後
if ($status === false) {
    //*** function化する！******\
    sql_error($stmt);
} else {
    //*** function化する！*****************
    redirect("select.php");
}
?>
