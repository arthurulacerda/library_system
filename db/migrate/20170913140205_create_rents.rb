class CreateRents < ActiveRecord::Migration[5.1]
  def change
    create_table :rents do |t|
      t.references :user, foreign_key: true
      t.references :book_unit, foreign_key: true
      t.integer :days_to_deadline
      t.float :bill_day_delay

      t.timestamps
    end
  end
end
