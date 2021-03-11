# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

book.destroy_all
author.destroy_all

book = Book.create(
    {
        title: "deathly hallows",
        description: "great book",
        image_url: "https://ibb.co/Th1Hx13"
    },
)

author = Author.create(
    {
        name: "JK Rowling",
        image_url: "https://ibb.co/mGJ1Pv4"
    },
)

author.publishes.create(book: book)