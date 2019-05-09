class CreatePokemonIdSequence < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      DROP SEQUENCE IF EXISTS pokemons_id_seq CASCADE;
      CREATE SEQUENCE pokemons_id_seq;
    SQL
  end

  def down
    execute <<-SQL
      DROP SEQUENCE pokemons_id_seq;
    SQL
  end
end
