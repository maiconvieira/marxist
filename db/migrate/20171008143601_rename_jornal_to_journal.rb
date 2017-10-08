class RenameJornalToJournal < ActiveRecord::Migration[5.1]
  def change
    rename_column :goals, :jornal_sum, :journal_sum
  end
end
