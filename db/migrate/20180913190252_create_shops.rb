class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :product_type
      t.integer :quantity
      t.decimal :amount

      t.timestamps
    end
  end
end
