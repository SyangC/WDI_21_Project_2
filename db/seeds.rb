# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}"))
end

User.create ([
  {
    username: "shuisawesome",
    first_name: "Shu-yang",
    last_name: "Chia",
    email: "shu@me.com",
    bio: "I really love books and shit.",
    avatar_image: seed_image("shu.jpg"),
    password: "password",
    password_confirmation: "password"
  }, {
    username: "kittycat",
    first_name: "Cat",
    last_name: "Lady",
    email: "cat@me.com",
    bio: "I like books. But I like cats more.",
    avatar_image: seed_image("cat.jpeg"),
    password: "password",
    password_confirmation: "password"
  }, {
    username: "Andy",
    first_name: "Xiang",
    last_name: "Hua",
    email: "andy@me.com",
    bio: "What...?",
    avatar_image: seed_image("andy.jpg"),
    password: "password",
    password_confirmation: "password"
  }
])


Genre.create ([
  {
    name: "Bildungsroman"
  }, {
    name: "Romance"
  }, {
    name: "Science Fiction"
  }, {
    name: "Satire"
  }, {
    name: "Drama"
  }, {
    name: "Comedy"
  }, {
    name: "Horror"
  }, {
    name: "Mystery"
  }, {
    name: "Action"
  }, {
    name: "Adventure"
  }
])

Type.create ([
  {
    name: "Location"
  }, {
    name: "Food & Drink"
  }, {
    name: "Music"
  }, {
    name: "Miscellaneous"
  }
])