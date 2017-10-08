class RenameaddressToAddress < ActiveRecord::Migration[5.1]
  def change
    rename_column :people, :address, :address
  end
end
