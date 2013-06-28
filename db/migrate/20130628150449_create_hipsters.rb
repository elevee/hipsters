class CreateHipsters < ActiveRecord::Migration
  def change
    create_table :hipsters do |t|
      t.string :name
      t.string :favorite_beer
      t.integer :irony_rating
      t.boolean :moustache

      t.timestamps
    end
  end
end
