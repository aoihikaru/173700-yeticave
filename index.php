<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$is_auth = rand(0, 1);
$user_name = 'Рита'; // укажите здесь ваше имя

require_once('functions.php');
require_once('data.php');

$page_content = include_template('index.php',['auction' => $auction]);
$layout_content = include_template('layout.php', [
	'content' => $page_content,
	'categories' => $categories,
	'title' => 'YetiCave - Главная страница',
	'user_name' => $user_name,
	'is_auth' => $is_auth
]);
print($layout_content);