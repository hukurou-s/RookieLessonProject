class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_admin, :boolean, nil: false, default: false
  end
end
