<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

$is_auth = rand(0, 1);
$user_name = 'Рита'; // укажите здесь ваше имя

require_once('functions.php');
require_once('data.php');

function price_change($price_start) {
  $price_start = ceil($price_start);
  $integer_price = number_format($price_start, 0, ',', ' ');
  $integer_price .= ' <b class="rub">P</b>';
  return $integer_price;
};

function check_text($text) {
	$total_text = htmlspecialchars($text);
	return $total_text;
}

$page_content = include_template('index.php',['auction' => $auction]);
$layout_content = include_template('layout.php', [
	'content' => $page_content,
	'categories' => $categories,
	'title' => 'YetiCave - Главная страница',
	'user_name' => $user_name,
	'is_auth' => $is_auth
]);
print($layout_content);