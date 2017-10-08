class AddPersonToGoals < ActiveRecord::Migration[5.1]
  def change
    add_reference :goals, :person, foreign_key: true
  end
end
