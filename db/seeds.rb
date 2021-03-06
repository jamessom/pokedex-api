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

ActiveRecord::Base.connection.reset_pk_sequence!('types')
ActiveRecord::Base.connection.reset_pk_sequence!('pokemons')


bulba = Pokemon.create!(id: 1, name: "bulbasaur")
ivysaur = Pokemon.create!(id: 2, name: "ivysaur", parent: bulba)
venusaur = Pokemon.create!(id: 3, name: "venusaur", parent: ivysaur)
charmander = Pokemon.create!(id: 4, name: "charmander")
charmeleon = Pokemon.create!(id: 5, name: "charmeleon", parent: charmander)
charizard = Pokemon.create!(id: 6, name: "charizard", parent: charmeleon)
squirtle = Pokemon.create!(id: 7, name: "squirtle")
wartortle = Pokemon.create!(id: 8, name: "wartortle", parent: squirtle)
blastoise = Pokemon.create!(id: 9, name: "blastoise", parent: blastoise)
caterpie = Pokemon.create!(id: 10, name: "caterpie")
metapod = Pokemon.create!(id: 11, name: "metapod", parent: caterpie)
butterfree = Pokemon.create!(id: 12, name: "butterfree", parent: metapod)


pokemons = [
  {id: 13, name: "weedle"},
  {id: 14, name: "kakuna"},
  {id: 15, name: "beedrill"},
  {id: 16, name: "pidgey"},
  {id: 17, name: "pidgeotto"},
  {id: 18, name: "pidgeot"},
  {id: 19, name: "rattata"},
  {id: 20, name: "raticate"},
  {id: 21, name: "spearow"},
  {id: 22, name: "fearow"},
  {id: 23, name: "ekans"},
  {id: 24, name: "arbok"},
  {id: 25, name: "pikachu"},
  {id: 26, name: "raichu"},
  {id: 27, name: "sandshrew"},
  {id: 28, name: "sandslash"},
  {id: 29, name: "nidoran-f"},
  {id: 30, name: "nidorina"},
  {id: 31, name: "nidoqueen"},
  {id: 32, name: "nidoran-m"},
  {id: 33, name: "nidorino"},
  {id: 34, name: "nidoking"},
  {id: 35, name: "clefairy"},
  {id: 36, name: "clefable"},
  {id: 37, name: "vulpix"},
  {id: 38, name: "ninetales"},
  {id: 39, name: "jigglypuff"},
  {id: 40, name: "wigglytuff"},
  {id: 41, name: "zubat"},
  {id: 42, name: "golbat"},
  {id: 43, name: "oddish"},
  {id: 44, name: "gloom"},
  {id: 45, name: "vileplume"},
  {id: 46, name: "paras"},
  {id: 47, name: "parasect"},
  {id: 48, name: "venonat"},
  {id: 49, name: "venomoth"},
  {id: 50, name: "diglett"},
  {id: 51, name: "dugtrio"},
  {id: 52, name: "meowth"},
  {id: 53, name: "persian"},
  {id: 54, name: "psyduck"},
  {id: 55, name: "golduck"},
  {id: 56, name: "mankey"},
  {id: 57, name: "primeape"},
  {id: 58, name: "growlithe"},
  {id: 59, name: "arcanine"},
  {id: 60, name: "poliwag"},
  {id: 61, name: "poliwhirl"},
  {id: 62, name: "poliwrath"},
  {id: 63, name: "abra"},
  {id: 64, name: "kadabra"},
  {id: 65, name: "alakazam"},
  {id: 66, name: "machop"},
  {id: 67, name: "machoke"},
  {id: 68, name: "machamp"},
  {id: 69, name: "bellsprout"},
  {id: 70, name: "weepinbell"},
  {id: 71, name: "victreebel"},
  {id: 72, name: "tentacool"},
  {id: 73, name: "tentacruel"},
  {id: 74, name: "geodude"},
  {id: 75, name: "graveler"},
  {id: 76, name: "golem"},
  {id: 77, name: "ponyta"},
  {id: 78, name: "rapidash"},
  {id: 79, name: "slowpoke"},
  {id: 80, name: "slowbro"},
  {id: 81, name: "magnemite"},
  {id: 82, name: "magneton"},
  {id: 83, name: "farfetchd"},
  {id: 84, name: "doduo"},
  {id: 85, name: "dodrio"},
  {id: 86, name: "seel"},
  {id: 87, name: "dewgong"},
  {id: 88, name: "grimer"},
  {id: 89, name: "muk"},
  {id: 90, name: "shellder"},
  {id: 91, name: "cloyster"},
  {id: 92, name: "gastly"},
  {id: 93, name: "haunter"},
  {id: 94, name: "gengar"},
  {id: 95, name: "onix"},
  {id: 96, name: "drowzee"},
  {id: 97, name: "hypno"},
  {id: 98, name: "krabby"},
  {id: 99, name: "kingler"},
  {id: 100, name: "voltorb"},
  {id: 101, name: "electrode"},
  {id: 102, name: "exeggcute"},
  {id: 103, name: "exeggutor"},
  {id: 104, name: "cubone"},
  {id: 105, name: "marowak"},
  {id: 106, name: "hitmonlee"},
  {id: 107, name: "hitmonchan"},
  {id: 108, name: "lickitung"},
  {id: 109, name: "koffing"},
  {id: 110, name: "weezing"},
  {id: 111, name: "rhyhorn"},
  {id: 112, name: "rhydon"},
  {id: 113, name: "chansey"},
  {id: 114, name: "tangela"},
  {id: 115, name: "kangaskhan"},
  {id: 116, name: "horsea"},
  {id: 117, name: "seadra"},
  {id: 118, name: "goldeen"},
  {id: 119, name: "seaking"},
  {id: 120, name: "staryu"},
  {id: 121, name: "starmie"},
  {id: 122, name: "mr-mime"},
  {id: 123, name: "scyther"},
  {id: 124, name: "jynx"},
  {id: 125, name: "electabuzz"},
  {id: 126, name: "magmar"},
  {id: 127, name: "pinsir"},
  {id: 128, name: "tauros"},
  {id: 129, name: "magikarp"},
  {id: 130, name: "gyarados"},
  {id: 131, name: "lapras"},
  {id: 132, name: "ditto"},
  {id: 133, name: "eevee"},
  {id: 134, name: "vaporeon"},
  {id: 135, name: "jolteon"},
  {id: 136, name: "flareon"},
  {id: 137, name: "porygon"},
  {id: 138, name: "omanyte"},
  {id: 139, name: "omastar"},
  {id: 140, name: "kabuto"},
  {id: 141, name: "kabutops"},
  {id: 142, name: "aerodactyl"},
  {id: 143, name: "snorlax"},
  {id: 144, name: "articuno"},
  {id: 145, name: "zapdos"},
  {id: 146, name: "moltres"},
  {id: 147, name: "dratini"},
  {id: 148, name: "dragonair"},
  {id: 149, name: "dragonite"},
  {id: 150, name: "mewtwo"},
  {id: 151, name: "mew"},
]

pokemons.each do |pokemon|
  Pokemon.create_with(pokemon).find_or_create_by(name: pokemon[:name])
end

pokemon_types = {
  1  => { "type_ids" => [4,12] },
  2  => { "type_ids" => [4,12] },
  3  => { "type_ids" => [4,12] },
  4  => { "type_ids" => [10] },
  5  => { "type_ids" => [10] },
  6  => { "type_ids" => [3,10] },
  7  => { "type_ids" => [11] },
  8  => { "type_ids" => [11] },
  9  => { "type_ids" => [11] },
  10 => { "type_ids" => [7] },
  11 => { "type_ids" => [7] },
  12 => { "type_ids" => [3,7] },
}

Pokemon.update(pokemon_types.keys, pokemon_types.values)

ActiveRecord::Base.connection.reset_pk_sequence!('pokemons')
