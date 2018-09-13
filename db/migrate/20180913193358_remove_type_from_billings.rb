class RemoveTypeFromBillings < ActiveRecord::Migration[5.2]
  def change
    remove_column :billings, :type, :string
  end
end
