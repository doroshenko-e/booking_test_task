class CreateRestaurant < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :address
      t.datetime :work_start
      t.datetime :work_end
    end
  end
end
