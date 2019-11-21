class RemoveAuthorFromReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :author, :string
  end
end
