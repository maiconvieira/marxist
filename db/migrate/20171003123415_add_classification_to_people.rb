class AddClassificationToPeople < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :classification, :string
  end
end
