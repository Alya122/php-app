<?php

require_once('../functions.php');
require_once('../db.php');

$username = $_POST['username'] ?? '';
$password = $_POST['password'] ?? '';

$error = 'Грешно потребителско име или парола!';

$sql = "SELECT * FROM users WHERE username = :username";
$stmt = $pdo->prepare($sql);
$stmt->execute([':username' => $username]);
$user = $stmt->fetch();

if (!$user) {
    $_SESSION['flash']['message']['text'] = $error;
    $_SESSION['flash']['message']['type'] = 'danger';
    header('Location: ../index.php?page=login');
    exit;
} else {
    if (password_verify($password, $user['password'])) {
        session_start();
        $_SESSION['username'] = $user['username'];
        $_SESSION['email'] = $user['email'] ?? '';
        $_SESSION['user_id'] = $user['id'];

        setcookie('last_login', $user['username'], time() + 3600, '/', 'localhost', false, false);

        header('Location: ../index.php?page=home');
        exit;
    } else {
        $_SESSION['flash']['message']['text'] = $error;
        $_SESSION['flash']['message']['type'] = 'danger';
        header('Location: ../index.php?page=login');
        exit;
    }
}
