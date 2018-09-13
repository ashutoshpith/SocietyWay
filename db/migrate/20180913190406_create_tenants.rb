class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.date :entry
      t.date :leaving
      t.string :parking
      t.string :room_no
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
