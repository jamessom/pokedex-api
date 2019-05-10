class Pokemon < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_ancestry
  has_and_belongs_to_many :types
end
