-- Добавление информации в таблицу Категорий
INSERT INTO categories (name)
VALUES ('Доски и лыжи'),
       ('Крепления'),
       ('Ботинки'),
       ('Одежда'),
       ('Инструменты'),
       ('Разное');
-- Добавление информации в таблицу Пользователей
INSERT INTO users (registration_date, email, name, password, pic, contact)
VALUES ('2018-02-25 15:08:04', 'kiryanovan@mail.ru', 'Надя', 'Nn123456', 'img/avatar.jpg', 'kiryanovan@mail.ru'),
       ('2018-07-06 03:25:58', 'zloysnegovik@yandex.ru', 'Семен', 'Z10Y5neg0v1k', 'img/avatar.jpg', 'zloysnegovik@yandex.ru'),
       ('2019-01-15 22:43:35', 'madrobot@gmail.com', 'Егор', 'AmD01b0r', 'img/avatar.jpg', '89991856492');
-- Добавление информации в таблицу Лотов
INSERT INTO lots (create_date, name, description, image, start_price, end_date, bet_step, user_id, category_id)
VALUES ('2019-02-05 17:00:15', '2014 Rossignol District Snowboard', 'Хорошая доска для начинающих.', 'img/lot-1.jpg', '10999', '2019-03-05 17:00:15', '200', '1', '1'),
       ('2019-02-06 03:48:03', 'DC Ply Mens 2016/2017 Snowboard', '', 'img/lot-2.jpg', '159999', '2019-03-06 03:48:03', '1000', '2', '1'),
       ('2019-02-07 09:10:28', 'Крепления Union Contact Pro 2015 года размер L/XL', 'Невероятно легкие универсальные крепления весом всего 720 грамм готовы порадовать прогрессирующих райдеров, практикующих как трассовое катание, так и взрывные спуски в паудере.', 'img/lot-3.jpg', '8000', '2019-03-07 09:10:28', '100', '3', '2'),
       ('2019-02-07 22:33:46', 'Ботинки для сноуборда DC Mutiny Charocal', 'Чёткие ботинки, лёгкие. На ноге сидят как влитые.', 'img/lot-4.jpg', '10999', '2019-03-07 22:33:46', '300', '2', '3'),
       ('2019-02-09 12:08:57', 'Куртка для сноуборда DC Mutiny Charocal', '', 'img/lot-5.jpg', '7500', '2019-03-09 12:08:57', '150', '2', '4'),
       ('2019-02-10 19:24:35', 'Маска Oakley Canopy', '', 'img/lot-6.jpg', '5400', '2019-03-10 19:24:35', '100', '3', '6');
-- Добавление информации в таблицу Ставок
INSERT INTO bets (create_date, lot_price, user_id, lot_id)
VALUES ('2019-02-05 19:45:28', '160999', '3', '2'),
       ('2019-02-12 12:15:07', '5500', '1', '6');
-- получить все категории
SELECT * FROM categories;
-- получить самые новые, открытые лоты. Каждый лот должен включать название, стартовую цену, ссылку на изображение, цену, название категории
SELECT l.name, start_price, image, lot_price, category_id FROM lots l
JOIN bets ON l.id = lot_id
WHERE end_date > NOW();
-- показать лот по его id. Получите также название категории, к которой принадлежит лот
SELECT l.name, c.name FROM lots l
JOIN categories c ON l.id = c.id
WHERE l.id = 4;
-- обновить название лота по его идентификатору
UPDATE lots SET name = 'Ботинки для сноуборда DC Mutiny Charcoal'
WHERE id = 4;
-- получить список самых свежих ставок для лота по его идентификатору
SELECT lot_price FROM bets
WHERE lot_id = 2 ORDER BY lot_price DESC;