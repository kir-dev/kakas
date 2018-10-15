class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :auth_sch_id
      t.string :mail
      t.boolean :admin
      t.string :image
      t.text :introduction

      t.timestamps
    end
  end
end
