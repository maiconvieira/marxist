class AddSumsToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :jornal_sum, :decimal
    add_column :goals, :first_campaign_sum, :decimal
    add_column :goals, :second_campaign_sum, :decimal
  end
end
