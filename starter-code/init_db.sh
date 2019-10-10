#!/bin/sh

# TODO: Create database and initialize database table structure

# Dropping DB first for HW purposes only, never for real development
psql -c "DROP DATABASE IF EXISTS sql_joins_lab_db"

psql -c "CREATE DATABASE sql_joins_lab_db WITH ENCODING 'UTF8'"

# Create Table Schemas
psql -d sql_joins_lab_db -f init_db.sql

# TODO: Insert data into tables
psql -d sql_joins_lab_db -f seed_db.sql
