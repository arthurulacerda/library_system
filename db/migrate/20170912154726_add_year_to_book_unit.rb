class AddYearToBookUnit < ActiveRecord::Migration[5.1]
  def change
    add_column :book_units, :year, :integer
  end
end
