class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.text :title
      t.text :duration
      t.text :description
      t.text :recipe_steps
      t.text :url
      t.text :video

      t.timestamps
    end
  end
end
