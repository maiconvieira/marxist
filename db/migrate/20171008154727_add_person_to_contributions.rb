class AddPersonToContributions < ActiveRecord::Migration[5.1]
  def change
    add_reference :contributions, :person, foreign_key: true
  end
end
