class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.integer :quota
      t.decimal :quota_value
      t.integer :journal
      t.decimal :journal_value
      t.integer :first_campaign
      t.decimal :first_campaign_value
      t.integer :second_campaign
      t.decimal :second_campaign_value

      t.timestamps
    end
  end
end
