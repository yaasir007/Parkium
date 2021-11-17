class AddAvailableSlotsToParkings < ActiveRecord::Migration[6.1]
  def change
    add_column :parkings, :available_slots, :integer
  end
end
