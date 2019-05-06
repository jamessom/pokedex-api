require 'csv'

namespace :pokeapi_cc do
  desc "Import first 151 Pokemons from pokeapi.co"
  pokeapi_url = 'https://pokeapi.co/api/v2'

  task import_pokemons: :environment do
    pokemons = JSON.parse(HTTParty.get("#{pokeapi_url}/pokemon?limit=151").body)
    # pokemon = {
    #   id: poke_data['id'],
    #   name: poke_data['name'],
    #   sprite: poke_data['sprites']['front_default']
    # }

    arr_pokemons = []

    pokemons['results'].map do |pokemon|
      arr_pokemons << pokemon = {
        id: pokemon['url'].split('/').last,
        name: pokemon['name']
      }
    end

    puts arr_pokemons
  end

  desc "Download first 151 pokemon image from git"
  task download_images: :environment do
  end
end
