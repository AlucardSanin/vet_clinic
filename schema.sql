/* Database schema to keep the structure of entire database. */
CREATE database vet_clinic;

CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    full_name VARCHAR(250),
    age INT,
    PRIMARY KEY(id)
);

CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    name VARCHAR(250),
    PRIMARY KEY(id)
);

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    name VARCHAR(100),
    species VARCHAR(100),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg FLOAT(2),
    PRIMARY KEY(id) 
);

ALTER TABLE animals 
DROP COLUMN species;

ALTER TABLE animals
ADD COLUMN species_id INT REFERENCES species(id);

ALTER TABLE animals
ADD COLUMN owner_id INT REFERENCES owners(id);

/* DAY 4 */

CREATE TABLE vets (
    id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
    name VARCHAR(100),
    age INT,
    date_of_graduation DATE,
    PRIMARY KEY(id)
);

CREATE TABLE specializations (
    species_id INT NULL REFERENCES species(id) ON DELETE CASCADE,
    vet_id INT NULL REFERENCES vets(id) ON DELETE CASCADE
);

CREATE TABLE visits (
    animal_id INT NULL REFERENCES animals(id) ON DELETE CASCADE,
    vet_id INT NULL REFERENCES vets(id) ON DELETE CASCADE,
    date_of_visit DATE NOT NULL
);