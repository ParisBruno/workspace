class AddCreatedAtToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :created_at, :timestamp
  end
end
