class AddCreatedAtToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :created_at, :timestamp
  end
end
