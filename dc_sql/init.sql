-- 顧客情報
-- has_many :sales
-- has_many :logs

-- CREATE DATABSE IF NOT EXISTS `ec`;
USE `ec`;

CREATE TABLE IF NOT EXISTS `customers` (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  birthday date NOT NULL,
  gender int(11) NOT NULL,
  prefecture varchar(255) NOT NULL,
  register_date date NOT NULL,
  is_premium boolean NOT NULL,
  PRIMARY KEY (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COMMENT='顧客情報';


-- 商品情報
-- has_many :sales
CREATE TABLE IF NOT EXISTS `products` (
  product_id int(11) NOT NULL AUTO_INCREMENT,
  product_name varchar(255) NOT NULL ,
  product_category varchar(255) NOT NULL,
  cost int(11) NOT NULL,
  PRIMARY KEY (product_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COMMENT='商品情報';


-- 販売情報
-- belongs_to :customer(user_id)
-- belongs_to :product(product_id)

CREATE TABLE IF NOT EXISTS `sales` (
  order_id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  product_id int(11) NOT NULL,
  date_time date NOT NULL,
  quantity int(11) NOT NULL,
  revenue int(11) NOT NULL,
  is_proper boolean NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY  (user_id) REFERENCES customers(user_id),
  FOREIGN KEY  (product_id) REFERENCES products(product_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COMMENT='販売情報';


-- -- ログ
-- has_many :customers(user_id)

CREATE TABLE IF NOT EXISTS `web_log` (
  cid int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  device varchar(255) NOT NULL,
  sale_date date NOT NULL,
  quantity int(11) NOT NULL,
  revenue int(11) NOT NULL,
  is_proper boolean NOT NULL,
  PRIMARY KEY (cid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COMMENT='ログ';

