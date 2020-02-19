def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books INNER JOIN series ON books.series_id = series.id WHERE series.id = 1 ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, MIN(characters.motto) FROM characters;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) AS species_count FROM characters GROUP BY species ORDER BY species_count DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN series ON authors.id = series.author_id INNER JOIN subgenres ON series.subgenre_id = subgenres.id GROUP BY authors.name;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN authors ON series.author_id = authors.id INNER JOIN characters ON authors.id = characters.author_id GROUP BY series.title HAVING COUNT(characters.species) LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.book_id) AS book_count FROM characters JOIN character_books ON characters.id = character_books.character_id GROUP BY characters.name HAVING book_count DESC"
end
