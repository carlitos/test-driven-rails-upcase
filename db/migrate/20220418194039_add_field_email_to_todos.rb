class AddFieldEmailToTodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :email, :string
  end
end
