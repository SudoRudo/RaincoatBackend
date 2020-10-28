class CreateUserCities < ActiveRecord::Migration[6.0]
  def change
    create_table :user_cities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
