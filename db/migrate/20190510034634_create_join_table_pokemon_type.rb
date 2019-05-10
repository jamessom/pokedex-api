class CreateJoinTablePokemonType < ActiveRecord::Migration[5.2]
  def change
    create_join_table :pokemons, :types
  end
end
