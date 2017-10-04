class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :duration
      t.text :description
      t.text :steps
      t.string :url
      t.string :video
      t.string :image

      t.timestamps
    end
  end
end
