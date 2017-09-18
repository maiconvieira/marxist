class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :phone
      t.string :mail
      t.text :adrress
      t.date :came_in
      t.string :picture

      t.timestamps
    end
  end
end
