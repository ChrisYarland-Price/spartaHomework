class AddItemToIngredients < ActiveRecord::Migration[5.1]
  def change
        add_reference :ingredients, :items, index: true
  end
end
