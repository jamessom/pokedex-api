class AddPokemonSequence < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      ALTER SEQUENCE pokemons_id_seq OWNED BY pokemons.id;
      ALTER TABLE pokemons ALTER COLUMN id SET DEFAULT nextval('pokemons_id_seq');
    SQL
  end

  def down
    execute <<-SQL
      ALTER SEQUENCE pokemons_id_seq OWNED BY NONE;
      ALTER TABLE pokemons ALTER COLUMN id SET NOT NULL;
    SQL
  end
end
