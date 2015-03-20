class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
