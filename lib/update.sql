UPDATE characters SET species = 'Martian' WHERE id = (select max(id) from characters)
