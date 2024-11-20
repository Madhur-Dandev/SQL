-- library management system --

create database library;

use library;

create table user (
user_id int primary key auto_increment,
user_email varchar(255) not null unique,
first_name varhchar(50),
last_name varchar(50),
username varchar(16) not null unique,
password varchar(255) not null unique,
books_issued int check (books_issued between 0 and 4));

create table admin (
admin_id int primary key auto_increment,
first_name varchar(50) not null unique,
last_name varchar(50),
admin_key char(8) not null unique,
passkey varchar(255) not null,
role char(5) not null);

-- role column for admins to determine their roles as a librarian, 5 character long uppercase code for roles, ex, 'ADMIN', 'ASSIS', etc.

crete table author (
author_id int primary key auto_increment,
author_fname varchar(50) not null,
author_lname varchar(50) not null,
author_email varchar(100) not null,
author_dob date not null,
author_dod date,

create table books (
book_id int primary key auto_increment,
book_title varchar(255) not null,
book_description text,
