class CreateOrder < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :table, foreign_key: true
      t.datetime :begin_time
      t.datetime :end_time
      t.string :client_name
      t.string :client_phone
    end
  end
end
