# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.destroy_all

Tag.create(name: "Sunny")
Tag.create(name: "Clear")
Tag.create(name: "Cloudy")
Tag.create(name: "Rain")
Tag.create(name: "Snow")
Tag.create(name: "Storm")
Tag.create(name: "Freezing (Under 40F)")
Tag.create(name: "Cold (40F - 49F)")
Tag.create(name: "Chilly (50F - 59F)")
Tag.create(name: "Cool (60F - 67F)")
Tag.create(name: "Warm (68F - 75F)")
Tag.create(name: "Hot (76F - 85F)")
Tag.create(name: "Arizona (86F and Over)")