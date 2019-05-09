class Pokemon < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_ancestry
end
