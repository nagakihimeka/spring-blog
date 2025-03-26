-- 各種テーブル削除
DROP TABLE EXISTS categories;
DROP TABLE EXISTS users;
DROP TABLE EXISTS blogs;


-- カテゴリーテーブル
CREATE TABLE categories (
	id SERIAL PRIMARY KEY,
	name VARCHAR(20),
);

-- ユーザーテーブル
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	email VARCHAR(255),
	name VARCHAR(20),
	password VARCHAR(50),
);
-- 記事テーブル
CREATE TABLE blogs (
	id SERIAL PRIMARY KEY,
	category_id INTEGER,
	user_id INTEGER,
	title VARCHAR(255),
	body TEXT
);