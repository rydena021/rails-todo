class RenameCompletedToCompletedAt < ActiveRecord::Migration[5.0]
  def change
    rename_column :items, :completed, :completed_at
  end
end
