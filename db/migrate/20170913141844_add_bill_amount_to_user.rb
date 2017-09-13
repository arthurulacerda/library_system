class AddBillAmountToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bill_amount, :float, default: 0.0
  end
end
