<?php
function include_template($name, $data) {
	$name = 'templates/' . $name;
	$result = 'Файл отсутствует. Необходимо проверить корректность подключенной информации';
	if (!is_readable($name)) {
		return $result;
	}
	ob_start();
	extract($data);
	require $name;
	$result = ob_get_clean();
	return $result;
}
// Форматирование цены
function price_change($price_start) {
	$price_start = ceil($price_start);
	$integer_price = number_format($price_start, 0, ',', ' ');
	$integer_price .= ' <b class="rub">P</b>';
	return $integer_price;
};

// Количество времени до полуночи
function rest_time($end_time) {
	$dt_end = date_create($end_time);
	$dt_now = date_create("now");
	$dt_diff = date_diff($dt_end, $dt_now);
	return date_interval_format($dt_diff, "%H:%i");
};