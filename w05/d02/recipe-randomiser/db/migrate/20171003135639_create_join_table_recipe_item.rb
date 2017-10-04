class CreateJoinTableRecipeItem < ActiveRecord::Migration[5.1]
  def change
    create_join_table :recipes, :items do |t|
      t.index [:recipe_id, :item_id]
      # t.index [:item_id, :recipe_id]
    end
  end
end
