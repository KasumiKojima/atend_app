class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :sub_title
      t.datetime :start
      t.datetime :end
      t.integer :capacity
      t.string :place_name
      t.string :place_address

      t.timestamps
    end
  end
end
