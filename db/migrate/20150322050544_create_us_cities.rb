class CreateUsCities < ActiveRecord::Migration
  def change
    create_table :us_cities do |t|
      t.string :name
      t.references :state, index: true

      t.timestamps null: false
    end
    add_foreign_key :us_cities, :states
  end
end
