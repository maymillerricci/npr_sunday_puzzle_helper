class CreateCapitals < ActiveRecord::Migration
  def change
    create_table :capitals do |t|
      t.string :name
      t.references :country, index: true

      t.timestamps null: false
    end
    add_foreign_key :capitals, :countries
  end
end
