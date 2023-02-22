/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN DATE '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.50;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT* FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;
SELECT COUNT(*) FROM animals;
SELECT COUNT(escape_attempts) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, COUNT(escape_attempts) FROM animals GROUP BY neutered ORDER BY COUNT(escape_attempts) DESC LIMIT 1;
SELECT species MAX(weight_kg), MIN(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN DATE '1990-01-01' AND '2000-01-01' GROUP BY species;

