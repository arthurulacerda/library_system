class AddRentCheckedToRent < ActiveRecord::Migration[5.1]
  def change
    add_column :rents, :rent_checked, :boolean
  end
end
