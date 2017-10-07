class RemoveClassificationToPeople < ActiveRecord::Migration[5.1]
  def change
    remove_column :people, :classification, :string
  end
end
