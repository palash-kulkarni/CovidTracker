
1. Database : Mysql2 (Relational Database)
2. Framework : Sinatra
3. ORM : ActiveRecord

Models :
1. User
2. Admin
3. Zone
4. Assessment


Relationships :
1. User belongs to a zone
2. Zone has many users

Tables : 
1. Users(id primary_key, name varchar(20), mobile_number integer, pincode integer, zone_id integer)
2. Admins(id, primary_key, name varchar(20), mobile_number integer, pincode integer)
3. Zones(id primary_key, zone_type varchar(20))
4. Assessments(id primary_key, symptom_id integer)
5. Symptoms(id primary_key, name varchar(20))

SQLs Migrations :
-- create database covid_tracker;
-- use covid_tracker;
-- create table users(id integer, name varchar(30), mobile_number varchar(30), pincode integer);
-- create table admins(id integer, name varchar(30), mobile_number varchar(30), pincode integer);
-- create table zones(id integer, zone_type varchar(20));
-- alter table users add column zone_id integer;
-- create table assessments(id integer, symptom_id integer);
-- create table symptops(id integer,  name varchar(30));
-- alter table users add column any_contact integer default 0;
-- create table travel_histories(id integer, source varchar(30), destination varchar(30), user_id integer);