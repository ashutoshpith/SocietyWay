class CreateBillings < ActiveRecord::Migration[5.2]
  def change
    create_table :billings do |t|
      t.decimal :amount
      t.string :type
      t.date :due_date
      t.integer :filled
      t.references :tenant, foreign_key: true

      t.timestamps
    end
  end
end
