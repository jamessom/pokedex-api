class AddAncestryToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :ancestry, :string
    add_index :pokemons, :ancestry
  end
end
