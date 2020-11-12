class Cocktail < ApplicationRecord
  has_many :doses, destroy: :dependent 
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true,
end
