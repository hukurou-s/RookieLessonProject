class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :password, null: false
      t.string :grade, null: false
      t.string :snum, null: false, uniqueness: true
      t.string :account, null: false, uniqueness: true

      t.timestamps
    end
  end
end
