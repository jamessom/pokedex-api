class PokemonsSerializer < ApplicationSerializer
  attributes :name, :types
  attribute :evolutions do |record|
    {
      descendants: record.descendants,
      children: record.children,
      ancestors: record.ancestors
    }
  end
end
