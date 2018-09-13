class AddKindToBillings < ActiveRecord::Migration[5.2]
  def change
    add_column :billings, :kind, :string
  end
end
