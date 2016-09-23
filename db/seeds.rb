# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
User.destroy_all

clarissa_notmyreallastname = User.create(
  {is_translator: true, f_name: "Clarissa", l_name: "Notmyreallastname", email: "clarissa@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Los Angeles", country: "USA", bio: "I was born!",
    web_link: "www.clarissa.com", language_1: "English", language_2: "Bulgarian", rate_per_word: 0.18,
    minimum_rate: 30, rush_rate_per_word: 0.16, rush_minimum: 50, notary_fee: 10, specialization: "legal",
    ata_certified: true, available: true, trados: true, trados_version: "2015"}
    )

sochin_imnothererightnow = User.create(
  {is_translator: true, f_name: "Sochin", l_name: "Imnothererightnow", email: "sochin@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Honolulu", country: "USA", bio: "I was born on an island!",
    web_link: "www.sochin.com", language_1: "English", language_2: "Bulgarian", rate_per_word: 0.13,
    minimum_rate: 40, rush_rate_per_word: 0.15, rush_minimum: 50, notary_fee: 20, specialization: "medical",
    available: true}
    )

victoria_queentoo = User.create(
  {is_translator: true, f_name: "Victoria", l_name: "Queentoo", email: "victoria@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Weho!", country: "USA", bio: "I was born too!",
    web_link: "www.victoria.com", language_1: "English", language_2: "Bulgarian", rate_per_word: 0.12,
    minimum_rate: 60, rush_rate_per_word: 0.18, rush_minimum: 80, notary_fee: 20, specialization: "medical",
    available: true, trados: true, trados_version: "2011"}
    )

joseph_somethingreallyasian = User.create(
  {is_translator: true, f_name: "Joseph", l_name: "Somethingreallyasian", email: "joseph@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Koreatown", country: "USA", bio: "I was also born!",
    web_link: "www.joseph.com", language_1: "English", language_2: "Bulgarian", rate_per_word: 0.15,
    minimum_rate: 45, rush_rate_per_word: 0.18, rush_minimum: 60, notary_fee: 10, specialization: "patents",
    ata_certified: true, judicial_court: true, available: true }
    )

james_icangetawaywiththiscauseimasian = User.create(
  {is_translator: true, f_name: "James", l_name: "Icangetawaywiththiscauseimasian", email: "james@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Santa Clarita", country: "USA", bio: "I'm the first person to ever be born!",
    web_link: "www.james.com", language_1: "English", language_2: "Bulgarian", rate_per_word: 0.16,
    minimum_rate: 40, rush_rate_per_word: 0.18, rush_minimum: 60, notary_fee: 15, specialization: "real estate",
    judicial_court: true, available: true }
    )

mondale_imalsoasian = User.create(
  {is_translator: true, f_name: "Mondale", l_name: "Imalsoasian", email: "mondale@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Hollywood", country: "USA", bio: "I was never born.",
    web_link: "www.mondale.com", language_1: "English", language_2: "Bulgarian", rate_per_word: 0.13,
    minimum_rate: 20, rush_rate_per_word: 0.14, rush_minimum: 25, notary_fee: 10, specialization: "menus",
    available: true }
    )

berry_theresnowayimasian = User.create(
  {is_translator: true, f_name: "Berry", l_name: "Theresnowayimasian", email: "berry@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Beaversdam", country: "Narnia", bio: "I was born in a dream.",
    web_link: "www.berry.com", language_1: "Bulgarian", language_2: "English", rate_per_word: 0.20,
    minimum_rate: 60, rush_rate_per_word: 0.25, rush_minimum: 70, notary_fee: 15, specialization: "everything in existence",
    ata_certified: true, judicial_court: true, trados: true, available: true, trados_version: "2015" }
    )

marcela_becerra= User.create(
  {is_transcriber: true, f_name: "Marcela", l_name: "Becerra", email: "marcela@ga.co",
    password: "abcd1234", password_confirmation: "abcd1234",
    phone_number: "123-123-1234", city: "Inglewood", country: "USA", bio: "Was I born?",
    web_link: "www.google.com", rate_per_minute: 5, available: true}
)
