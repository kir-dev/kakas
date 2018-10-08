class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :image
      t.references :category, foreign_key: true
      t.string :toppings
      t.string :string

      t.timestamps
    end
  end
end
