/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id) 
VALUES 
  ('Agumon', DATE '2020-02-03', 0, true, 10.23, 2, 1),
  ('Gabumon', DATE '2018-11-15', 2, true, 8, 2, 2),
  ('Pikachu', DATE '2021-01-07', 1, false, 15.04, 1, 2),
  ('Charmander', DATE '2020-02-08', 0, false, -11, 1, 4),
  ('Plantomn', DATE '2021-11-15', 2, true, -5.7, 2, 3),
  ('Squirtle', DATE '1993-03-02', 3, false, -12.13, 1, 4),
  ('Angemon', DATE '2005-06-12', 1, true, -45, 2, 5),
  ('Boarmon', DATE '2005-06-07', 7, true, 20.4, 2, 5),
  ('Blossom', DATE '1998-10-13', 3, true, 17, 1, 4),
  ('Devimon', DATE '2017-05-12', 5, true, 11, 2, 3),
  ('Ditto', DATE '2022-05-14', 4, true, 22, 1, NULL);

INSERT INTO owners (full_name, age)
VALUES
  ('San Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melody Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);

INSERT INTO species (name)
VALUES
  ('Pokemon'),
  ('Digimon');