-- create the chemicals table
CREATE TABLE chemicals (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    chemicalName VARCHAR(100) NOT NULL,
    casNumber VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(100)
);

-- get the summary of all the chemicals
select * from chemicals

-- get the key details of a single chemical by id
select id, chemicalName, casNumber from chemicals where id = ?

-- create a new chemical
insert into chemicals(chemicalName, casNumber, manufacturer) values (?, ?, ?)

-- update a chemical given its id
update chemicals set chemicalName = ?, casNumber = ?, manufacturer = ? where id = ?

-- delete a chemical given an id
delete from chemicals where id = ?