class CreateSignatures < ActiveRecord::Migration[5.1]
  def change
    create_table :signatures do |t|
      t.date :signature_date
      t.integer :editions
      t.integer :initial_edition
      t.integer :final_edition

      t.timestamps
    end
  end
end
