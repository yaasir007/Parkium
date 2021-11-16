class AddUserRefToParkings < ActiveRecord::Migration[6.1]
  def change
    add_reference :parkings, :user, foreign_key: true
  end
end
