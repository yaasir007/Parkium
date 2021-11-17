class RemoveSlotFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :bookings, :slots
    remove_column :bookings, :slot_id
  end
end
