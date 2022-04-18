class AddFieldCompletedAtToTodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :completed_at, :timestamp
  end
end
