class AddCitiesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cities, :text, array: true, default: []
  end
end
