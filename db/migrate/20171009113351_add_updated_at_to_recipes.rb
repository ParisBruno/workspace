class AddUpdatedAtToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :updated_at, :timestamp
  end
end
