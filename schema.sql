/* Database schema to keep the structure of entire database. */
CREATE database vet_clinic;

CREATE TABLE animals (
    id INT,
    name VARCHAR(100),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg FLOAT(2),
    species VARCHAR(250)
);
