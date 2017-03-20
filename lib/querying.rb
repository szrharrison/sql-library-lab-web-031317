def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year
  from books
  where books.series_id = 1
  order by books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select characters.name, characters.motto
  from characters
  order by length(characters.motto) desc
  limit 1;"
end

def select_value_and_count_of_most_prolific_species
  "select characters.species, count(characters.species)
  from characters
  group by characters.species
  order by count(characters.species) desc
  limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name
  from series
  inner join subgenres
  on subgenres.id = series.subgenre_id
  inner join authors
  on authors.id = series.author_id;"
end

def select_series_title_with_most_human_characters
  "select series.title
  from series
  inner join characters
  on series.id = characters.series_id
  group by series.title
  order by sum(case when characters.species = 'human' then 1 else 0 end) desc
  limit 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, sum( character_books.character_id = characters.id ) as characters_books
  from characters, character_books
  group by characters.name
  order by characters_books desc;"
end
