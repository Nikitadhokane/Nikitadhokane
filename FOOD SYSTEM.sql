CREATE DATABASE Food;
USE Food;

CREATE TABLE  menu(
menu_id int PRIMARY KEY NOT NULL AUTO_INCREMENT, menu_name VARCHAR(255)NOT NULL,
price float NOT NULL, menu_type_id int NOT NULL, menu_status int NOT NULL,
FOREIGN KEY(menu_type_id) REFERENCES menutype(menu_type_id));


CREATE TABLE menutype(
menu_type_id int PRIMARY KEY NOT NULL AUTO_INCREMENT, type_name VARCHAR(50) NOT NULL,
description VARCHAR(100)NOT NULL);

CREATE TABLE customer(
customer_id int PRIMARY KEY NOT NULL AUTO_INCREMENT, customer_first_name VARCHAR(50) NOT NULL,
customer_last_name VARCHAR(50) NOT NULL, customer_email VARCHAR(50) NOT NULL,
customer_phone_number VARCHAR(12) NOT NULL,customer_password VARCHAR(50)NOT NULL);

CREATE TABLE user(
user_id int PRIMARY KEY NOT NULL AUTO_INCREMENT, user_full_name VARCHAR(100) NOT NULL,
user_contact VARCHAR(50) NOT NULL, user_email VARCHAR(50) NOT NULL, 
user_password VARCHAR(30) NOT NULL);

CREATE TABLE oorder(
oorder_id int PRIMARY KEY NOT NULL AUTO_INCREMENT, customer_id int NOT NULL,
user_id int NOT NULL,oorder_date date NOT NULL, total_amount float NOT NULL, 
oorder_status int NOT NULL,FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (user_id)REFERENCES user(user_id));

CREATE TABLE order_details(
order_details_id int PRIMARY KEY NOT NULL AUTO_INCREMENT,order_id int NOT NULL,
menu_id int NOT NULL,amount float NOT NULL,total_amount float NOT NULL,
quantity int NOT NULL, FOREIGN KEY(order_id) REFERENCES oorder(oorder_id),
FOREIGN KEY(menu_id) REFERENCES menu(menu_id));

CREATE TABLE payment(
payment_id int PRIMARY KEY NOT NULL AUTO_INCREMENT, order_id int NOT NULL,
amount float NOT NULL, payment_date date NOT NULL, 
FOREIGN KEY (order_id) REFERENCES oorder(oorder_id));

CREATE TABLE admin(
admin_id int PRIMARY KEY NOT NULL AUTO_INCREMENT, username VARCHAR(50) NOT NULL,
password VARCHAR(100) NOT NULL,email VARCHAR(100));


 



