# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Movie.count == 0
    puts "Creating Movies..."
    Movie.create([{
        title: "Elf",
        year: 2003, 
        poster_url: "https://m.media-amazon.com/images/M/MV5BMzUxNzkzMzQtYjIxZC00NzU0LThkYTQtZjNhNTljMTA1MDA1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg"
    } , {
        title: "White Christmas",
        year: 1954, 
        poster_url: "https://m.media-amazon.com/images/M/MV5BYjI0ZTk0ZjQtZTMzOS00NDdmLTk0YzUtZTQ4NGRkNWFhZTkxXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX182_CR0,0,182,268_AL_.jpg"
    } , {
        title: "Rudolph the Red-Nosed Reindeer",
        year: 1964,
        poster_url: "https://m.media-amazon.com/images/M/MV5BYjdjZjkyYjUtOWJiZC00ZTE2LTk4MDktZjliOTk5ZDk5ZTZhXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY268_CR3,0,182,268_AL_.jpg"
    }])
end