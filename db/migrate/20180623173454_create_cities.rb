class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.float :lat
      t.float :lon
      t.string :city_id

      t.timestamps
    end
  end
end
