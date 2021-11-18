class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :user, null: false, foreign_key: true
      t.references :parking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
