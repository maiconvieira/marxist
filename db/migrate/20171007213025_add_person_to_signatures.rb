class AddPersonToSignatures < ActiveRecord::Migration[5.1]
  def change
    add_reference :signatures, :person, foreign_key: true
  end
end
