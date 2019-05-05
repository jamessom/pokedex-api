# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

types = [
  {id: 1, name: 'normal'},
  {id: 2, name: 'fighting'},
  {id: 3, name: 'flying'},
  {id: 4, name: 'poison'},
  {id: 5, name: 'ground'},
  {id: 6, name: 'rock'},
  {id: 7, name: 'bug'},
  {id: 8, name: 'ghost'},
  {id: 9, name: 'steel'},
  {id: 10, name: 'fire'},
  {id: 11, name: 'water'},
  {id: 12, name: 'grass'},
  {id: 13, name: 'electric'},
  {id: 14, name: 'psychic'},
  {id: 15, name: 'ice'},
  {id: 16, name: 'dragon'},
  {id: 17, name: 'dark'},
  {id: 18, name: 'fairy'},
  {id: 10001, name: 'unknown'},
  {id: 10002, name: 'shadow'},
]

types.each do |type|
  Type.create_with(type).find_or_create_by(name: type[:name])
end