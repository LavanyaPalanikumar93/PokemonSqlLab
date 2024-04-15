--  Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer. You may interpret strongest in whatever way you want, but you will have to explain your decision.
-- Based on the query My strongest trainer is Hunter Bigon, who trained Ninjask pokemon which has a highest speed of 361. There is a tie of 5 trainers at the highest speed of 361.
select p.name AS "pokemon Name",
ta.trainername AS "Trainer Name",
tr.pokeLevel AS "Level",
pTypes.name AS "Primary Type",
sTypes.name AS "Secondary Type",
tr.speed AS "Speed"
FROM pokemon.trainers AS table
LEFT JOIN pokemon.pokemon_trainer AS tr ON ta.trainerID=tr.trainerID
LEFT JOIN pokemon.pokemons AS p ON p.id=tr.pokemon_id
LEFT JOIN pokemons.types AS pTypes ON p.primary_type=pTypes.id
LEFT JOIN pokemon.types AS sTypes ON p.secondary_type=sTypes.id
GRROP BY p.name,ta.trainername,tr.pokeLevel,tr.speed,pTypes.name,sTypes.name
ORDER BY tr.speeed desc;
