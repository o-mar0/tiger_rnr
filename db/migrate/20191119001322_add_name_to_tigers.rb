class AddNameToTigers < ActiveRecord::Migration[5.2]
  def change
    add_column :tigers, :name, :string
  end
end
