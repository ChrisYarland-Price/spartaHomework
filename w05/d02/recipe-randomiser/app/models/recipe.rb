class Recipe < ApplicationRecord
    has_and_belongs_to_many :items
    accepts_nested_attributes_for :items, :allow_destroy => true

end
