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

u1 = User.create (
  {
    username: "shuisawesome",
    first_name: "Shu-yang",
    last_name: "Chia",
    email: "shu@me.com",
    bio: "I really love books and shit.",
    avatar_image: seed_image("shu.jpg"),
    password: "password",
    password_confirmation: "password"
  })

u2 = User.create (
  {
    username: "kittycat",
    first_name: "Cat",
    last_name: "Lady",
    email: "cat@me.com",
    bio: "I like books. But I like cats more.",
    avatar_image: seed_image("cat.jpeg"),
    password: "password",
    password_confirmation: "password"
  })

u3 = User.create (
  {
    username: "Andy",
    first_name: "Xiang",
    last_name: "Hua",
    email: "andy@me.com",
    bio: "What...?",
    avatar_image: seed_image("andy.jpg"),
    password: "password",
    password_confirmation: "password"
  })


g1 = Genre.create (
  {
    name: "Bildungsroman"
  })

g2 = Genre.create (
  {
    name: "Romance"
  })

g3 = Genre.create (
  {
    name: "Science Fiction"
  })

g4 = Genre.create (
  {
    name: "Satire"
  })

g5 = Genre.create (
  {
    name: "Drama"
  })

g6 = Genre.create (
  {
    name: "Black Comedy"
  })
g7 = Genre.create (
  {
    name: "Horror"
  })
g8 = Genre.create (
  {
    name: "Psychological"
  })
g9 = Genre.create (
  {
    name: "Existential Ennui"
  })
g10 = Genre.create (
  {
    name: "Magic Realism"
  })
g11 = Genre.create (
  {
    name: "Philosophical"
  })
g12 = Genre.create (
  {
    name: "Fantasy"
  })
g13 = Genre.create (
  {
    name: "Poetry"
  })


t1 = Type.create (
  {
    name: "Location"
  })
t2 = Type.create (
  {
    name: "Food & Drink"
  })
t3 = Type.create (
  {
    name: "Music"
  })
t4 = Type.create (
  {
    name: "Miscellaneous"
  })

b1 = Book.create (
  {
    name: "Lolita",
    author: "Vladimir Nabokov",
    book_image: seed_image("lolita.jpeg"),
    user_id: u1.id,
    genre_id: g6.id
  })

b2 = Book.create (
  {
    name: "One Hundred Years of Solitude",
    author: "Gabriel García Márquez",
    book_image: seed_image("hundredyears.jpeg"),
    user_id: u1.id,
    genre_id: g10.id
  })

b3 = Book.create (
  {
    name: "Norwegian Wood",
    author: "Haruki Murakami",
    book_image: seed_image("norwegianwood.jpg"),
    user_id: u2.id,
    genre_id: g1.id
  })

b4 = Book.create (
  {
    name: "Mr. Tickle",
    author: "Roger Hargreaves",
    book_image: seed_image("Mr._Tickle.jpg"),
    user_id: u2.id,
    genre_id: g7.id
  })

b5 = Book.create (
  {
    name: "Stoner",
    author: "John Williams",
    book_image: seed_image("stoner.jpg"),
    user_id: u1.id,
    genre_id: g9.id
  })

b6 = Book.create (
  {
    name: "The Pciture of Dorian Grey",
    author: "Oscar Wilde",
    book_image: seed_image("doriangrey.jpg"),
    user_id: u3.id,
    genre_id: g9.id
  })

b7 = Book.create (
  {
    name: "Hunger",
    author: "Knut Hamsun",
    book_image: seed_image("hunger.jpg"),
    user_id: u3.id,
    genre_id: g8.id
  })

b8 = Book.create (
  {
    name: "Hangover Square",
    author: "Patrick Hamilton",
    book_image: seed_image("hangoversquare.jpg"),
    user_id: u2.id,
    genre_id: g6.id
  })

b9 = Book.create (
  {
    name: "Do Androids Dream of Electric Sheep",
    author: "Philip K. Dick",
    book_image: seed_image("DoAndroidsDream.png"),
    user_id: u1.id,
    genre_id: g3.id
  })

b10 = Book.create (
  {
    name: "The Name of the Wind",
    author: "Patrick Rothfuss",
    book_image: seed_image("nameofthewind.jpg"),
    user_id: u2.id,
    genre_id: g12.id
  })

b11 = Book.create (
  {
    name: "Brand New Ancients",
    author: "Kate Tempest",
    book_image: seed_image("brandnewancients.jpg"),
    user_id: u1.id,
    genre_id: g13.id
  })