--What is each pokemon's primary type?
SELECT name, primary_type FROM pokemons;
--What is Rufflet's secondary type?
SELECT pokemons.name, types.name
FROM pokemons JOIN types
ON pokemons.secondary_type =types.id;
WHERE pokemons.name ='RUFFLET';
-- What are the name of the pokemon that belong to the trainer with trainerID 303?
SELECT trainers.trainername AS Trainers_Name,pokemon.name AS pokemon_Name FROM triners JOIN pokemons
ON pokemons.id=trainers.trainerID
WHERE pokemons.id=303;
-- How many pokemon have a secondary type poison
SELECT count(*) FROM pokemons JOIN types ON pokemons.secondary_type=type.id WHERE types.name='poison';
-- What are all the primary types and how many pokemon have that type?
SELECT types.name, count(pokemon.id) FROM pokemons JOIN types ON pokemons.primary_type=types.id GROUP BY types.name;
--How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
SELECT trainerID, counnt(*) FROM pokemonn_triner WHERE pokelevel=100 GROUP BY trainerID;
--How many pokemon only belong to one trainer and no othr?
SELECT count(pokemoni_d)
FROM pokemon_trainer
WHERE pokemon_id IN (
  SELECT pokemon_id
  FROM pokemon_trainer
  GROUP BY pokemon_id
  HAVING count(DISTINCT trainerID)=1
);