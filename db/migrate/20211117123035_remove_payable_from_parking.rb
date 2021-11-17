class RemovePayableFromParking < ActiveRecord::Migration[6.1]
  def change
    remove_column :parkings, :payable
  end
end
