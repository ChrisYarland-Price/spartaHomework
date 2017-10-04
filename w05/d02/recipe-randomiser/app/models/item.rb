class Item < ApplicationRecord
  has_and_belongs_to_many :recipes  
  has_many :ingredients
end
