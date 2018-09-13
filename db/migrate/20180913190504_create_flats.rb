class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :flat_no
      t.string :bhk_type
      t.references :tenant, foreign_key: true
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
