--
-- File generated with SQLiteStudio v3.4.4 on Sat May 11 08:50:06 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: accounts_account
CREATE TABLE IF NOT EXISTS "accounts_account" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "first_name" varchar(50) NOT NULL, "last_name" varchar(50) NOT NULL, "username" varchar(50) NOT NULL UNIQUE, "email" varchar(100) NOT NULL UNIQUE, "phone_number" varchar(50) NOT NULL, "date_joined" datetime NOT NULL, "last_login" datetime NOT NULL, "is_admin" bool NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "is_superadmin" bool NOT NULL);
INSERT INTO accounts_account (id, password, first_name, last_name, username, email, phone_number, date_joined, last_login, is_admin, is_staff, is_active, is_superadmin) VALUES (1, 'pbkdf2_sha256$600000$0dcT9E3cyDqZjBn6BeW0lg$huVH/ChPK52M+OoCcAYIbC4Cupdmm0e34+JvZ57As20=', 'Linh', 'Bui', 'bkl', 'vju@gmail.com', '', '2023-06-05 12:38:11.323035', '2024-05-07 10:04:13.255808', 1, 1, 1, 1);
INSERT INTO accounts_account (id, password, first_name, last_name, username, email, phone_number, date_joined, last_login, is_admin, is_staff, is_active, is_superadmin) VALUES (3, 'pbkdf2_sha256$600000$Hwyzr84bh1RWJn6b3J4C5T$0YYDHlWEXXj6tmrykuZdDochni9HeSFmB5tstfQO/iA=', 'Taylor', 'Swift', 'jijaeseok', 'jijaeseok@gmail.com', '0920284323', '2023-06-05 12:42:52.925460', '2023-06-05 12:45:36.712657', 0, 0, 1, 0);

-- Table: auth_group
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);

-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: auth_permission
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_category', 'Can add category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_category', 'Can change category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_category', 'Can delete category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_category', 'Can view category');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_account', 'Can add account');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_account', 'Can change account');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_account', 'Can delete account');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_account', 'Can view account');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_product', 'Can add product');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_product', 'Can change product');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_product', 'Can delete product');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_product', 'Can view product');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_variation', 'Can add variation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_variation', 'Can change variation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_variation', 'Can delete variation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_variation', 'Can view variation');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_reviewrating', 'Can add review rating');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_reviewrating', 'Can change review rating');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_reviewrating', 'Can delete review rating');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_reviewrating', 'Can view review rating');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_cart', 'Can add cart');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_cart', 'Can change cart');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_cart', 'Can delete cart');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_cart', 'Can view cart');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_cartitem', 'Can add cart item');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_cartitem', 'Can change cart item');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_cartitem', 'Can delete cart item');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_cartitem', 'Can view cart item');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 13, 'add_order', 'Can add order');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 13, 'change_order', 'Can change order');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 13, 'delete_order', 'Can delete order');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 13, 'view_order', 'Can view order');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (53, 14, 'add_payment', 'Can add payment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (54, 14, 'change_payment', 'Can change payment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (55, 14, 'delete_payment', 'Can delete payment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (56, 14, 'view_payment', 'Can view payment');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (57, 15, 'add_orderproduct', 'Can add order product');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (58, 15, 'change_orderproduct', 'Can change order product');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (59, 15, 'delete_orderproduct', 'Can delete order product');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (60, 15, 'view_orderproduct', 'Can view order product');

-- Table: carts_cart
CREATE TABLE IF NOT EXISTS "carts_cart" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "cart_id" varchar(250) NOT NULL, "date_added" date NOT NULL);
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (1, 'y9bliwek6i0q4vv3gmekoedyl2hjou8a', '2023-06-06');
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (2, '3x5v2xgkpxl1ofion4n30o88j4ndjw1g', '2023-06-06');
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (3, '21pwps2o9b09c9wz0fug427rm4yjzd0s', '2023-06-06');
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (4, 'wqd2j4ej6iksehrbne47k77timm2poqx', '2023-06-06');
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (5, 'i3n08mxmi7jej7y1ohxq55hx5zmyjxit', '2023-06-06');
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (6, 'ofw8z8ks0bte9s4mqch72j78f8rj6ft5', '2023-06-06');
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (7, 'gb83tyzb2o5oxjaaqvyb3kakbqqdhlvn', '2023-06-07');
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (8, '12qo1a2rssdl908fe2dycf3rkj0ezl3c', '2023-06-07');
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (9, 'dtuyfgs98p4uiv439by89z86ghx7atfx', '2023-06-07');
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (10, '3i0qfmj6cqmgaumgukegq3247upall49', '2023-06-07');
INSERT INTO carts_cart (id, cart_id, date_added) VALUES (11, '9vqb0nkauym99tbb4ksvxzizy7uqdqge', '2023-06-07');

-- Table: carts_cartitem
CREATE TABLE IF NOT EXISTS "carts_cartitem" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "quantity" integer NOT NULL, "is_active" bool NOT NULL, "cart_id" bigint NULL REFERENCES "carts_cart" ("id") DEFERRABLE INITIALLY DEFERRED, "product_id" integer NOT NULL REFERENCES "store_product" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" bigint NULL REFERENCES "accounts_account" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (5, 1, 1, 2, 7, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (6, 1, 1, 3, 7, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (10, 1, 1, 4, 1, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (11, 3, 1, 5, 2, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (12, 5, 1, 5, 4, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (13, 9, 1, 5, 1, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (14, 1, 1, 5, 5, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (15, 2, 1, 5, 3, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (16, 3, 1, 6, 3, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (17, 2, 1, 6, 1, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (18, 3, 1, 6, 2, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (19, 1, 1, 6, 7, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (23, 1, 1, 8, 1, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (25, 1, 1, 10, 2, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (28, 1, 1, 11, 7, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (29, 1, 1, 11, 10, NULL);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (32, 1, 1, NULL, 3, 1);
INSERT INTO carts_cartitem (id, quantity, is_active, cart_id, product_id, user_id) VALUES (35, 1, 1, NULL, 4, 1);

-- Table: carts_cartitem_variations
CREATE TABLE IF NOT EXISTS "carts_cartitem_variations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "cartitem_id" bigint NOT NULL REFERENCES "carts_cartitem" ("id") DEFERRABLE INITIALLY DEFERRED, "variation_id" bigint NOT NULL REFERENCES "store_variation" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: category_category
CREATE TABLE IF NOT EXISTS "category_category" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "category_name" varchar(50) NOT NULL UNIQUE, "slug" varchar(100) NOT NULL UNIQUE, "description" text NOT NULL, "cat_image" varchar(100) NOT NULL);
INSERT INTO category_category (id, category_name, slug, description, cat_image) VALUES (1, 'Drinks', 'drinks', '', '');
INSERT INTO category_category (id, category_name, slug, description, cat_image) VALUES (2, 'Lunch Meals', 'lunch-meals', '', '');
INSERT INTO category_category (id, category_name, slug, description, cat_image) VALUES (3, 'Snacks', 'snack', '', '');
INSERT INTO category_category (id, category_name, slug, description, cat_image) VALUES (4, 'Others', 'others', '', '');

-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "accounts_account" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (1, '2', 'jijaeseok@gmail.com', 3, '', 7, 1, '2023-06-05 12:42:40.604687');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '3', 'jijaeseok@gmail.com', 2, '[{"changed": {"fields": ["Is active"]}}]', 7, 1, '2023-06-05 12:45:23.037013');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '1', 'Drinks', 1, '[{"added": {}}]', 6, 1, '2023-06-05 12:55:37.502635');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (4, '2', 'Lunch Meals', 1, '[{"added": {}}]', 6, 1, '2023-06-05 12:55:45.194426');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (5, '3', 'Snack', 1, '[{"added": {}}]', 6, 1, '2023-06-05 12:55:59.525451');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (6, '4', 'Others', 1, '[{"added": {}}]', 6, 1, '2023-06-05 12:56:16.076818');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (7, '3', 'Snacks', 2, '[{"changed": {"fields": ["Category name"]}}]', 6, 1, '2023-06-05 12:56:20.052289');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (8, '2', 'Lunch Meals', 2, '[]', 6, 1, '2023-06-05 12:56:22.331400');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (9, '1', 'Twister Orange Juice Drink 350ml', 1, '[{"added": {}}]', 8, 1, '2023-06-05 13:01:51.591825');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (10, '2', 'Ice+ Juice Peach Flavor 490ml', 1, '[{"added": {}}]', 8, 1, '2023-06-05 13:04:42.428434');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (11, '3', 'Kirin Latte Milk Tea 345ml', 1, '[{"added": {}}]', 8, 1, '2023-06-05 13:07:32.164178');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (12, '4', 'Banh Mi', 1, '[{"added": {}}]', 8, 1, '2023-06-05 13:17:07.781036');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (13, '5', 'Tuna Mayo Onigiri', 1, '[{"added": {}}]', 8, 1, '2023-06-05 13:24:34.316105');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (14, '6', 'Mixed Noodle', 1, '[{"added": {}}]', 8, 1, '2023-06-05 13:43:52.321467');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (15, '7', 'Orion O’Star Potato Chips Snack Korean Kimchi Taste 24g', 1, '[{"added": {}}]', 8, 1, '2023-06-05 13:55:38.049990');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (16, '8', 'Oreo Choco Cream 120g', 1, '[{"added": {}}]', 8, 1, '2023-06-05 13:59:02.106296');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (17, '9', 'Vietnamese Spring Roll (Pho Cuon)', 1, '[{"added": {}}]', 8, 1, '2023-06-05 14:02:59.435099');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (18, '9', 'Vietnamese Spring Roll (Pho Cuon)', 2, '[{"changed": {"fields": ["Images"]}}]', 8, 1, '2023-06-05 14:03:29.876711');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (19, '9', 'Vietnamese Spring Roll (Pho Cuon)', 2, '[]', 8, 1, '2023-06-05 14:03:38.911437');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (20, '10', 'Lotte Xylitol Gum Blueberrymint 11.6g', 1, '[{"added": {}}]', 8, 1, '2023-06-05 14:10:59.063986');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (21, '10', 'Lotte Xylitol Gum Blueberrymint 11.6g', 2, '[{"changed": {"fields": ["Description"]}}]', 8, 1, '2023-06-05 14:12:20.917866');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (22, '13', '1', 3, '', 13, 1, '2023-06-07 13:34:43.601334');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (23, '19', '1', 3, '', 13, 1, '2023-06-07 13:35:05.167605');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (24, '18', '1', 3, '', 13, 1, '2023-06-07 13:35:07.975305');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (25, '17', '1', 3, '', 13, 1, '2023-06-07 13:35:10.985708');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (26, '16', '1', 3, '', 13, 1, '2023-06-07 13:35:13.704274');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (27, '15', '1', 3, '', 13, 1, '2023-06-07 13:35:17.639579');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (28, '14', '1', 3, '', 13, 1, '2023-06-07 13:35:20.488810');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (29, '12', '1', 3, '', 13, 1, '2023-06-07 13:35:23.762017');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (30, '11', '1', 3, '', 13, 1, '2023-06-07 13:35:41.535804');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (31, '10', '1', 3, '', 13, 1, '2023-06-07 13:35:44.227174');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (32, '9', '1', 3, '', 13, 1, '2023-06-07 13:35:47.463759');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (33, '8', '1', 3, '', 13, 1, '2023-06-07 13:35:50.284312');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (34, '7', '1', 3, '', 13, 1, '2023-06-07 13:35:52.704938');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (35, '6', '1', 3, '', 13, 1, '2023-06-07 13:35:55.119092');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (36, '5', '1', 3, '', 13, 1, '2023-06-07 13:35:57.334023');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (37, '4', '1', 3, '', 13, 1, '2023-06-07 13:35:59.706729');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (38, '1', 'Linh', 3, '', 13, 1, '2023-06-07 13:36:02.763915');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (39, '3', '1', 3, '', 13, 1, '2023-06-07 13:51:53.973776');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (40, '2', '1', 3, '', 13, 1, '2023-06-07 13:51:58.229077');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (41, '20', 'Nguy?n Ng?c', 3, '', 13, 1, '2023-06-07 14:45:08.188140');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (42, '21', 'Nguy?n Ng?c', 3, '', 13, 1, '2023-06-07 14:45:11.574542');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (43, '22', 'Nguy?n Ng?c', 3, '', 13, 1, '2023-06-07 14:45:14.471181');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (44, '23', 'Nguy?n Ng?c', 3, '', 13, 1, '2023-06-07 14:46:10.944248');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (45, '26', 'e', 2, '[{"changed": {"fields": ["Is ordered"]}}]', 13, 1, '2023-06-07 14:49:31.593209');

-- Table: django_content_type
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'category', 'category');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'accounts', 'account');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'store', 'product');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'store', 'variation');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'store', 'reviewrating');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'carts', 'cart');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'carts', 'cartitem');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'orders', 'order');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'orders', 'payment');
INSERT INTO django_content_type (id, app_label, model) VALUES (15, 'orders', 'orderproduct');

-- Table: django_migrations
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'accounts', '0001_initial', '2023-06-05 12:33:40.985065');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'contenttypes', '0001_initial', '2023-06-05 12:33:40.993630');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2023-06-05 12:33:41.002288');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-06-05 12:33:41.011284');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-05 12:33:41.017025');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-06-05 12:33:41.026909');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0001_initial', '2023-06-05 12:33:41.044021');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2023-06-05 12:33:41.054550');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0003_alter_user_email_max_length', '2023-06-05 12:33:41.059663');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0004_alter_user_username_opts', '2023-06-05 12:33:41.067241');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0005_alter_user_last_login_null', '2023-06-05 12:33:41.073314');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0006_require_contenttypes_0002', '2023-06-05 12:33:41.077080');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2023-06-05 12:33:41.084663');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0008_alter_user_username_max_length', '2023-06-05 12:33:41.089323');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2023-06-05 12:33:41.095322');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0010_alter_group_name_max_length', '2023-06-05 12:33:41.104603');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0011_update_proxy_permissions', '2023-06-05 12:33:41.110603');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2023-06-05 12:33:41.118372');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'category', '0001_initial', '2023-06-05 12:33:41.124654');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'category', '0002_auto_20201006_0125', '2023-06-05 12:33:41.131178');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'store', '0001_initial', '2023-06-05 12:33:41.139554');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'store', '0002_variation', '2023-06-05 12:33:41.146448');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'carts', '0001_initial', '2023-06-05 12:33:41.156227');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'carts', '0002_cartitem_variations', '2023-06-05 12:33:41.166843');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'carts', '0003_auto_20210308_1648', '2023-06-05 12:33:41.184168');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'orders', '0001_initial', '2023-06-05 12:33:41.221047');
INSERT INTO django_migrations (id, app, name, applied) VALUES (27, 'orders', '0002_auto_20210313_0211', '2023-06-05 12:33:41.241106');
INSERT INTO django_migrations (id, app, name, applied) VALUES (28, 'orders', '0003_auto_20210313_0218', '2023-06-05 12:33:41.266650');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'sessions', '0001_initial', '2023-06-05 12:33:41.274900');
INSERT INTO django_migrations (id, app, name, applied) VALUES (30, 'store', '0003_reviewrating', '2023-06-05 12:33:41.290002');
INSERT INTO django_migrations (id, app, name, applied) VALUES (31, 'accounts', '0002_alter_account_id', '2023-06-05 19:56:42.646436');
INSERT INTO django_migrations (id, app, name, applied) VALUES (32, 'carts', '0004_alter_cart_id_alter_cartitem_id', '2023-06-05 19:56:42.671102');
INSERT INTO django_migrations (id, app, name, applied) VALUES (33, 'category', '0003_alter_category_id', '2023-06-05 19:56:42.687663');
INSERT INTO django_migrations (id, app, name, applied) VALUES (34, 'orders', '0004_alter_order_id_alter_orderproduct_id_and_more', '2023-06-05 19:56:42.727968');
INSERT INTO django_migrations (id, app, name, applied) VALUES (35, 'store', '0004_alter_product_id_alter_reviewrating_id_and_more', '2023-06-05 19:56:42.762557');
INSERT INTO django_migrations (id, app, name, applied) VALUES (36, 'carts', '0005_remove_cartitem_variations', '2023-06-06 01:55:24.215964');
INSERT INTO django_migrations (id, app, name, applied) VALUES (37, 'orders', '0005_rename_address_line_2_order_floor_and_more', '2023-06-06 01:55:24.267797');
INSERT INTO django_migrations (id, app, name, applied) VALUES (38, 'store', '0005_remove_variation_product_delete_reviewrating_and_more', '2023-06-06 01:55:24.286734');
INSERT INTO django_migrations (id, app, name, applied) VALUES (39, 'store', '0006_variation', '2023-06-07 08:22:49.403611');
INSERT INTO django_migrations (id, app, name, applied) VALUES (40, 'carts', '0006_cartitem_variations', '2023-06-07 08:22:49.434379');

-- Table: django_session
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('zr0vtdj4c4i41o5rxh8v01qq1gg2yfc5', 'e30:1q6F61:R-6uAIIjvDy1DbNCzQ2aLJpnf6fcFX5ysU2qwkDjANQ', '2023-06-19 18:38:25.435786');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ofw8z8ks0bte9s4mqch72j78f8rj6ft5', '.eJxVjDsOwyAQRO9CHaHFfJ0yvc-AFhaCkwgkY1dR7h5bcpGUM-_NvJnHbS1-62nxM7ErE-zy2wWMz1QPQA-s98Zjq-syB34o_KSdT43S63a6fwcFe9nXEkbKYI0eIuRIIE2KQqIm0qQN5BwEKrBEUjlQexhlcpayzk7FAYl9vukCOFM:1q6TS4:iAcizedKJ0dE94YsbCDwKfVDzbZqryUaA6NOXEPcUEg', '2023-06-20 09:58:08.493992');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('80m48elob0in3cu4epvkh4wjujnrue7d', '.eJxVjDsOwyAQRO9CHaHFfJ0yvc-AFhaCkwgkY1dR7h5bcpGUM-_NvJnHbS1-62nxM7ErE-zy2wWMz1QPQA-s98Zjq-syB34o_KSdT43S63a6fwcFe9nXEkbKYI0eIuRIIE2KQqIm0qQN5BwEKrBEUjlQexhlcpayzk7FAYl9vukCOFM:1q6p5j:oub7KwNsTT_SDDeVfLntnbQCPvKUBWnooWtB_f3Ljkc', '2023-06-21 09:04:31.064108');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('319l0w9zsh45e3h4e2o6bzug6w3bqe3u', '.eJxVjDsOwyAQRO9CHaHFfJ0yvc-AFhaCkwgkY1dR7h5bcpGUM-_NvJnHbS1-62nxM7ErE-zy2wWMz1QPQA-s98Zjq-syB34o_KSdT43S63a6fwcFe9nXEkbKYI0eIuRIIE2KQqIm0qQN5BwEKrBEUjlQexhlcpayzk7FAYl9vukCOFM:1q6sLa:nELr8sKaVM3Cr_Xx1PgfMloL-GSgaPE_5HDQpMmr2wU', '2023-06-21 12:33:06.070250');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('4owmg1f65h52uxmz1k0vsjfay5o0rstu', '.eJxVjDsOwyAQRO9CHaHFfJ0yvc-AFhaCkwgkY1dR7h5bcpGUM-_NvJnHbS1-62nxM7ErE-zy2wWMz1QPQA-s98Zjq-syB34o_KSdT43S63a6fwcFe9nXEkbKYI0eIuRIIE2KQqIm0qQN5BwEKrBEUjlQexhlcpayzk7FAYl9vukCOFM:1q6vV6:pkZTBnZlVSD6IczdbxShTv32OdwCcsyQN6p94mMUQic', '2023-06-21 15:55:08.492121');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('y3sgfc0w83zm1c5l5lv1eoovqwzdd4l8', '.eJxVjDsOwyAQRO9CHaHFfJ0yvc-AFhaCkwgkY1dR7h5bcpGUM-_NvJnHbS1-62nxM7ErE-zy2wWMz1QPQA-s98Zjq-syB34o_KSdT43S63a6fwcFe9nXEkbKYI0eIuRIIE2KQqIm0qQN5BwEKrBEUjlQexhlcpayzk7FAYl9vukCOFM:1s49qw:8sOe5HoY5TySmptPLBoX-EvjaMZwizUa-W_3TZwHFw0', '2024-05-21 01:42:46.265245');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('00ew004z9f5mzq9c72frob5hn2te2vty', '.eJxVjDsOwyAQRO9CHaHFfJ0yvc-AFhaCkwgkY1dR7h5bcpGUM-_NvJnHbS1-62nxM7ErE-zy2wWMz1QPQA-s98Zjq-syB34o_KSdT43S63a6fwcFe9nXEkbKYI0eIuRIIE2KQqIm0qQN5BwEKrBEUjlQexhlcpayzk7FAYl9vukCOFM:1s4HgD:agatQvKv-9GCk1et6zD6LtvAP9gglGYSGDhCMb-K620', '2024-05-21 10:04:13.262498');

-- Table: orders_order
CREATE TABLE IF NOT EXISTS "orders_order" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "order_number" varchar(20) NOT NULL, "first_name" varchar(50) NOT NULL, "last_name" varchar(50) NOT NULL, "phone" varchar(15) NOT NULL, "email" varchar(50) NOT NULL, "room" varchar(50) NOT NULL, "floor" varchar(50) NOT NULL, "order_note" varchar(100) NOT NULL, "order_total" real NOT NULL, "status" varchar(10) NOT NULL, "ip" varchar(20) NOT NULL, "is_ordered" bool NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "payment_id" integer NULL REFERENCES "orders_payment" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" bigint NULL REFERENCES "accounts_account" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO orders_order (id, order_number, first_name, last_name, phone, email, room, floor, order_note, order_total, status, ip, is_ordered, created_at, updated_at, payment_id, user_id) VALUES (24, '2023060724', 'Nguy?n Ng?c', 'Vinh', '1', 'vinh@gmail.com', '402', '', '', 12000.0, 'New', '127.0.0.1', 0, '2023-06-07 14:34:31.387116', '2023-06-07 14:34:31.400548', NULL, 1);
INSERT INTO orders_order (id, order_number, first_name, last_name, phone, email, room, floor, order_note, order_total, status, ip, is_ordered, created_at, updated_at, payment_id, user_id) VALUES (25, '2023060725', 'vinh', 'nguyen', '1', 'bkl21@gmail.com', '1', '', '', 12000.0, 'New', '127.0.0.1', 0, '2023-06-07 14:37:05.479154', '2023-06-07 14:37:05.493273', NULL, 1);
INSERT INTO orders_order (id, order_number, first_name, last_name, phone, email, room, floor, order_note, order_total, status, ip, is_ordered, created_at, updated_at, payment_id, user_id) VALUES (26, '2023060726', 'e', 'd', '1', 'user1@gmail.com', '1', '', '1', 12000.0, 'New', '127.0.0.1', 1, '2023-06-07 14:43:03.651446', '2023-06-07 14:49:31.587522', NULL, 1);
INSERT INTO orders_order (id, order_number, first_name, last_name, phone, email, room, floor, order_note, order_total, status, ip, is_ordered, created_at, updated_at, payment_id, user_id) VALUES (27, '2023060727', 'dda', 'adada', '0983140304', 'hungnguyencanh3s@gmail.com', '511', '', '2', 34000.0, 'New', '127.0.0.1', 0, '2023-06-07 15:55:36.515936', '2023-06-07 15:55:36.521070', NULL, 1);
INSERT INTO orders_order (id, order_number, first_name, last_name, phone, email, room, floor, order_note, order_total, status, ip, is_ordered, created_at, updated_at, payment_id, user_id) VALUES (28, '2024050728', 'Linh', 'Bui', '0349234', 'vju@gmail.com', '402', '4', '', 44000.0, 'New', '127.0.0.1', 0, '2024-05-07 01:43:21.767438', '2024-05-07 01:43:21.776986', NULL, 1);

-- Table: orders_orderproduct
CREATE TABLE IF NOT EXISTS "orders_orderproduct" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "quantity" integer NOT NULL, "product_price" real NOT NULL, "ordered" bool NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "order_id" bigint NOT NULL REFERENCES "orders_order" ("id") DEFERRABLE INITIALLY DEFERRED, "payment_id" integer NULL REFERENCES "orders_payment" ("id") DEFERRABLE INITIALLY DEFERRED, "product_id" integer NOT NULL REFERENCES "store_product" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" bigint NOT NULL REFERENCES "accounts_account" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: orders_payment
CREATE TABLE IF NOT EXISTS "orders_payment" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "payment_id" varchar(100) NOT NULL, "payment_method" varchar(100) NOT NULL, "amount_paid" varchar(100) NOT NULL, "status" varchar(100) NOT NULL, "created_at" datetime NOT NULL, "user_id" bigint NOT NULL REFERENCES "accounts_account" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO orders_payment (id, payment_id, payment_method, amount_paid, status, created_at, user_id) VALUES (1, '01J08785W2908253A', 'PayPal', '25500.0', 'COMPLETED', '2023-06-05 20:08:06.325667', 1);

-- Table: store_product
CREATE TABLE IF NOT EXISTS "store_product" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "product_name" varchar(200) NOT NULL UNIQUE, "slug" varchar(200) NOT NULL UNIQUE, "description" text NOT NULL, "price" integer NOT NULL, "images" varchar(100) NOT NULL, "stock" integer NOT NULL, "is_available" bool NOT NULL, "created_date" datetime NOT NULL, "modified_date" datetime NOT NULL, "category_id" bigint NOT NULL REFERENCES "category_category" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) VALUES (1, 'Twister Orange Juice Drink 350ml', 'twister-orange-juice-drink-350ml', 'Twister Orange Juice can 350ml 
Twister Orange Juice is made from natural orange juice, ensuring absolute safety for the health of consumers. The sweetness with natural fragrance in each fresh orange blossom, bring fresh feeling. 
The product is a delicious, nutritious natural drink for your whole family.', 12000, 'photos/products/1dd55c0d5b0550e477b50389996814ce.jpg', 20, 1, '2023-06-05 13:01:51.590260', '2023-06-05 13:01:51.590260', 1);
INSERT INTO store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) VALUES (2, 'Ice+ Juice Peach Flavor 490ml', 'ice-juice-peach-flavor-490ml', 'Ice+ Juice Peach Flavor 490ml
Fruit Juice Ice+ Peach Flavor helps supplement vitamins and minerals that are good for health. It quickly hydrates the body when exercising a lot or playing sports. This is a drink that gives you natural nutrients from fruits.', 10000, 'photos/products/ice-4.jpg', 20, 1, '2023-06-05 13:04:42.427263', '2023-06-05 13:04:42.427263', 1);
INSERT INTO store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) VALUES (3, 'Kirin Latte Milk Tea 345ml', 'kirin-latte-milk-tea-345ml', 'Kirin Latte Milk Tea 345ml
The semi-sweet milk tea is perfectly enjoyable on its own but also makes for a great drink to go with your sweets. It’s a full-bodied tea, really rich and tasty. The sweetness adds to the flavour of the tea rather than being too sugary on its own. It has a great texture too, lovely and smooth and milky, and whether its cold or even comes up to room temperature it’s really nice.', 12000, 'photos/products/P06469_1.jpg', 10, 1, '2023-06-05 13:07:32.162939', '2023-06-05 13:07:32.162988', 1);
INSERT INTO store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) VALUES (4, 'Banh Mi', 'banh-mi', 'These flavor-packed sausage banh mi sandwiches made with a creamy, spicy mayo, fresh cilantro and quick-pickled vegetables. If you’re not familiar with banh mi, it’s a traditional Vietnamese sandwich served in a crusty baguette would be perfect for a quick lunch.', 25000, 'photos/products/Banh-mi-xuc-xich-1.jpg', 48, 1, '2023-06-05 13:17:07.779898', '2023-06-05 20:08:06.384122', 2);
INSERT INTO store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) VALUES (5, 'Tuna Mayo Onigiri', 'tuna-mayo-onigiri', 'A fluffy Japanese rice ball filled with a savory tuna and mayonnaise filling, Tuna Mayo Onigiri (????????) is a modern staple of Japanese bento lunches. These warm onigiri with tuna made with sweet and tangy sushi rice, spicy creamy tuna, and wrapped with a crisp nori sheet are the ideal food for when you are on the go, going on a road trip, packing for a picnic, or just craving something savory.', 20000, 'photos/products/rice-ball-food-diet-japan.jpg', 20, 1, '2023-06-05 13:24:34.315048', '2023-06-05 13:24:34.315048', 2);
INSERT INTO store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) VALUES (6, 'Mixed Noodle', 'mixed-noodle', 'This new flavor blends the perfect combination of savory spices and various topping, resulting in an unforgettable taste experience that is sure to tantalize your taste buds.
Whether you''re a fan of traditional noodles or are on the hunt for something new and exciting to try, our Mixed Noodle flavor is the perfect choice.', 30000, 'photos/products/mi-tron-indomie-.jpg', 40, 1, '2023-06-05 13:43:52.319777', '2023-06-05 13:43:52.319777', 2);
INSERT INTO store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) VALUES (7, 'Orion O’Star Potato Chips Snack Korean Kimchi Taste 24g', 'orion-ostar-potato-chips-snack-korean-kimchi-taste-24g', 'Orion O''Star Potato Chips Snack offers a delightful Korean Kimchi flavor in a convenient 24g pack. These potato chips are expertly crafted to bring you the authentic and bold taste of traditional Korean Kimchi, a popular and flavorful side dish.
The chips are made from high-quality potatoes that are thinly sliced and perfectly seasoned with a unique blend of spices and seasonings inspired by the tangy and spicy flavors of Kimchi. Each chip is carefully fried to achieve a crispy and crunchy text', 10000, 'photos/products/d9973ec31375024e83c866b46dc47b65.jfif', 10, 1, '2023-06-05 13:55:38.048057', '2023-06-05 13:55:38.048057', 3);
INSERT INTO store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) VALUES (8, 'Oreo Choco Cream 120g', 'oreo-choco-cream-120g', 'Oreo Choco Cream 120g 
Oreo Choco Cream is a delicious and popular cookie that offers a delightful combination of rich chocolate flavor and a creamy filling. Each pack contains 120g of these iconic sandwich cookies, making it perfect for sharing or enjoying as a sweet treat on your own.', 20000, 'photos/products/oreo-chocolate-cream-biscuits.jpg', 10, 1, '2023-06-05 13:59:02.105068', '2023-06-05 13:59:02.105068', 3);
INSERT INTO store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) VALUES (9, 'Vietnamese Spring Roll (Pho Cuon)', 'vietnamese-spring-roll-pho-cuon', '5 rolls/serving
Indulge in the delicious and refreshing flavors of Vietnamese Spring Rolls (Pho Cuon) for your lunchtime delight! Our shop proudly presents these exquisite handcrafted rolls, made with the finest ingredients and authentic Vietnamese techniques.
Each Vietnamese Spring Roll is meticulously assembled using fresh, crisp vegetables like lettuce, cucumber, carrots, and bean sprouts, providing a delightful crunch with every bite.', 35000, 'photos/products/Basically-Summer-Rolls-01_hGhlfHr.jpg', 20, 1, '2023-06-05 14:02:59.434417', '2023-06-05 14:03:38.908836', 2);
INSERT INTO store_product (id, product_name, slug, description, price, images, stock, is_available, created_date, modified_date, category_id) VALUES (10, 'Lotte Xylitol Gum Blueberrymint 11.6g', 'lotte-xylitol-gum-blueberrymint-116g', 'Lotte Xylitol Gum in Blueberrymint flavor is a refreshing and sugar-free chewing gum option that offers a unique combination of fruity and minty taste. Each pack contains 11.6g of gum, providing you with plenty of gum to enjoy throughout the day.
The Blueberrymint flavor of Lotte Xylitol Gum combines the sweetness of ripe blueberries with a cool and invigorating mint sensation. The fruity blueberry flavor adds a burst of sweetness, while the minty notes pro', 10000, 'photos/products/8852008610475.jpg', 20, 1, '2023-06-05 14:10:59.062709', '2023-06-05 14:12:20.916157', 4);

-- Table: store_variation
CREATE TABLE IF NOT EXISTS "store_variation" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "variation_category" varchar(100) NOT NULL, "variation_value" varchar(100) NOT NULL, "is_active" bool NOT NULL, "created_date" datetime NOT NULL, "product_id" bigint NOT NULL REFERENCES "store_product" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: carts_cartitem_cart_id_9cb0a756
CREATE INDEX IF NOT EXISTS "carts_cartitem_cart_id_9cb0a756" ON "carts_cartitem" ("cart_id");

-- Index: carts_cartitem_product_id_acd010e4
CREATE INDEX IF NOT EXISTS "carts_cartitem_product_id_acd010e4" ON "carts_cartitem" ("product_id");

-- Index: carts_cartitem_user_id_4d21e0d9
CREATE INDEX IF NOT EXISTS "carts_cartitem_user_id_4d21e0d9" ON "carts_cartitem" ("user_id");

-- Index: carts_cartitem_variations_cartitem_id_8be23372
CREATE INDEX IF NOT EXISTS "carts_cartitem_variations_cartitem_id_8be23372" ON "carts_cartitem_variations" ("cartitem_id");

-- Index: carts_cartitem_variations_cartitem_id_variation_id_5f8efaf5_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "carts_cartitem_variations_cartitem_id_variation_id_5f8efaf5_uniq" ON "carts_cartitem_variations" ("cartitem_id", "variation_id");

-- Index: carts_cartitem_variations_variation_id_ef9f9ee3
CREATE INDEX IF NOT EXISTS "carts_cartitem_variations_variation_id_ef9f9ee3" ON "carts_cartitem_variations" ("variation_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

-- Index: orders_order_payment_id_46928ccc
CREATE INDEX IF NOT EXISTS "orders_order_payment_id_46928ccc" ON "orders_order" ("payment_id");

-- Index: orders_order_user_id_e9b59eb1
CREATE INDEX IF NOT EXISTS "orders_order_user_id_e9b59eb1" ON "orders_order" ("user_id");

-- Index: orders_orderproduct_order_id_5022a3e2
CREATE INDEX IF NOT EXISTS "orders_orderproduct_order_id_5022a3e2" ON "orders_orderproduct" ("order_id");

-- Index: orders_orderproduct_payment_id_492ed997
CREATE INDEX IF NOT EXISTS "orders_orderproduct_payment_id_492ed997" ON "orders_orderproduct" ("payment_id");

-- Index: orders_orderproduct_product_id_4d6ac024
CREATE INDEX IF NOT EXISTS "orders_orderproduct_product_id_4d6ac024" ON "orders_orderproduct" ("product_id");

-- Index: orders_orderproduct_user_id_1e7a7ab7
CREATE INDEX IF NOT EXISTS "orders_orderproduct_user_id_1e7a7ab7" ON "orders_orderproduct" ("user_id");

-- Index: orders_payment_user_id_cfa9f321
CREATE INDEX IF NOT EXISTS "orders_payment_user_id_cfa9f321" ON "orders_payment" ("user_id");

-- Index: store_product_category_id_574bae65
CREATE INDEX IF NOT EXISTS "store_product_category_id_574bae65" ON "store_product" ("category_id");

-- Index: store_variation_product_id_e4f08cbc
CREATE INDEX IF NOT EXISTS "store_variation_product_id_e4f08cbc" ON "store_variation" ("product_id");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
