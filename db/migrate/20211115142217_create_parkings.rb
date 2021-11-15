class CreateParkings < ActiveRecord::Migration[6.1]
  def change
    create_table :parkings do |t|
      t.string :name
      t.string :address
      t.string :description
      t.integer :number_of_slots
      t.integer :fees
      t.boolean :payable, default: false

      t.timestamps
    end
  end
end
