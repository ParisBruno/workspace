class AddUpdatedAtToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :updated_at, :timestamp
  end
end
