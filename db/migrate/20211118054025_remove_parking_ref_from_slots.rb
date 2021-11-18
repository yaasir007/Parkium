class RemoveParkingRefFromSlots < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :slots, :parkings
    remove_column :slots, :parking_id
  end
end
