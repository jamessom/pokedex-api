class PokemonsSerializer < ApplicationSerializer
  attributes :name, :has_evolution, :evolution_id
end
