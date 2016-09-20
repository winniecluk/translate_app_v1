# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
User.destroy_all

ezra_raez = User.create(
  {is_client: true, f_name: "Ezra", l_name: "Raez", email: "ezra@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Temple", country: "USA", bio: "Hello!",
    web_link: "www.google.com", company: "Douglas Emmett", position: "paralegal"}
    )

phil_lamplugh = User.create(
  {is_client: true, f_name: "Phil", l_name: "Lamplugh", email: "phil@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Culver", country: "USA", bio: "Hello!",
    web_link: "www.google.com", company: "Benoit LLC", position: "Accounts manager"})

jim_brown = User.create(
  {is_client: true, f_name: "Jim", l_name: "Brown", email: "jim@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "San Gabriel", country: "USA", bio: "Hello!",
    web_link: "www.google.com", company: "DaVita", position: "coordinator"}
  )

carrie_zhao = User.create(
  {is_translator: true, f_name: "Carrie", l_name: "Zhao", email: "carrie@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Arcadia", country: "USA", bio: "Hello!",
    web_link: "www.google.com", rate_per_word: 0.14, ata_certified: true, available: true}
  )

jing_zheng = User.create(
  {is_translator: true, f_name: "Jing", l_name: "Zheng", email: "carrie@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Arcadia", country: "USA", bio: "Hello!",
    web_link: "www.google.com", rate_per_word: 0.13, ata_certified: true, available: true}
  )

sochin_ancheta = User.create(
  {is_translator: true, f_name: "Sochin", l_name: "Ancheta", email: "carrie@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Arcadia", country: "USA", bio: "Hello!",
    web_link: "www.google.com", rate_per_word: 0.12, ata_certified: false, available: false}
  )

marcela_becerra= User.create(
  {is_transcriber: true, f_name: "Marcela", l_name: "Becerra", email: "marcela@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Inglewood", country: "USA", bio: "Hello!",
    web_link: "www.google.com", rate_per_minute: 5, available: true}
)
