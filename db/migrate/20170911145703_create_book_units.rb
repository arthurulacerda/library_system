class CreateBookUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :book_units do |t|
      t.references :book, foreign_key: true
      t.boolean :available
      t.string :edition
      t.string :condition

      t.timestamps
    end
  end
end
