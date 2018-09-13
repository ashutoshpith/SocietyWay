class CreateTSConnects < ActiveRecord::Migration[5.2]
  def change
    create_table :t_s_connects do |t|
      t.references :billing, foreign_key: true
      t.references :shop, foreign_key: true
      t.references :tenant, foreign_key: true

      t.timestamps
    end
  end
end
