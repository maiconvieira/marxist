class CreateContributions < ActiveRecord::Migration[5.1]
  def change
    create_table :contributions do |t|
      t.integer :school
      t.decimal :school_value
      t.decimal :school_sum
      t.integer :congress
      t.decimal :congress_value
      t.decimal :congress_sum

      t.timestamps
    end
  end
end
