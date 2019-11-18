class CreateTigers < ActiveRecord::Migration[5.2]
  def change
    create_table :tigers do |t|
      t.integer :age
      t.string :species
      t.integer :price
      t.string :location
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
