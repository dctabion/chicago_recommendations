CREATE DATABASE chicago_places;
\c chicago_places;
CREATE TABLE places (id SERIAL PRIMARY KEY, contributor VARCHAR, place VARCHAR, notes TEXT, type_of_place VARCHAR);
