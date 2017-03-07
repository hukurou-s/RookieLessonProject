class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :password, null: false
      t.string :grade, null: false
      t.string :snum, null: false
      t.string :account, null: false

      t.timestamps
    end

    add_index :users, :snum, unique: true
    add_index :users, :account, unique: true
  end
end
