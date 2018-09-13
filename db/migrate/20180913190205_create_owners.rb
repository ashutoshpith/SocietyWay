class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :last_name
      t.string :first_name
      t.string :gender
      t.string :phone
      t.string :per_add

      t.timestamps
    end
  end
end
