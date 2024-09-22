-- 초기 PRODUCT 데이터 4개 삽입.
INSERT IGNORE INTO product (id, name, category, price, description) VALUES (3, 'Columbia Coffee', 'COFFEE_BEAN_PACKAGE', 10000, '콜롬비아의 맛있는 커피');
INSERT IGNORE INTO product (id, name, category, price, description) VALUES (4, 'Columbia Quindio', 'COFFEE_BEAN_PACKAGE', 20000, '콜롬비아산 Quindio 커피');
INSERT IGNORE INTO product (id, name, category, price, description) VALUES (5, 'Brazil Serra Do Coffee', 'COFFEE_BEAN_PACKAGE', 15000, '브라질산 풍미가득한 커피');
INSERT IGNORE INTO product (id, name, category, price, description) VALUES (6, 'Ethiopia Sidamo', 'COFFEE_BEAN_PACKAGE', 8000, '에디오피아 커피 빈');


-- 초기 ORDER 데이터 5개 삽입.
INSERT IGNORE INTO orders (id, email, address, status, post_code, created_at, modified_at) VALUES (1, 'hong@gmail.com', '서울시 강남구', 'NOT_DELIVERY', '15888', now(), now());


-- 초기 ORDER_ITEM 데이터 10개 삽입.
INSERT IGNORE INTO order_items (id, oid, pid, category, price, quantity) VALUES (1, 1, 3, 'COFFEE_BEAN_PACKAGE', 10000, 2);
INSERT IGNORE INTO order_items (id, oid, pid, category, price, quantity) VALUES (2, 1, 5, 'COFFEE_BEAN_PACKAGE', 15000, 1);
