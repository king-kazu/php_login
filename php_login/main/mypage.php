<?php
session_start();
require_once '../classes/UserLogic.php';
require_once '../functions.php';

// ログインしているか判定し、していなかったら新規登録画面へ返す
$result = UserLogic::checkLogin();

if (!$result) {
  $_SESSION['login_err'] = 'ユーザを登録してログインしてください！';
  header('Location: signup_form.php');
  return;
}

$login_user = $_SESSION['login_user'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/style.css">
  <title>マイページ</title>
</head>
<body>
  <h2 class="mb20">マイページ</h2>
    <dt class="mb20">ログインユーザ名</dt><dd class="mb20"><?php echo h($login_user['name']) ?></dd>
    <dt class="mb20">メールアドレス</dt><dd class="mb20"><?php echo h($login_user['email']) ?></dd>
    <form action="logout.php" method="POST">
    <input type="submit" name="logout" value="ログアウト" class="btn btn-secondary">
</form>
</body>
</html>