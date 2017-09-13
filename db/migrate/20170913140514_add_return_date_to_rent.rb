class AddReturnDateToRent < ActiveRecord::Migration[5.1]
  def change
    add_column :rents, :return_date, :date
  end
end
