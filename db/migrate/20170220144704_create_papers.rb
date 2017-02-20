class CreatePapers < ActiveRecord::Migration[5.0]
  def change
    create_table :papers do |t|
      t.string :title_J, nil: false, default: ''
      t.string :title_E, nil: false, default: ''
      t.string :Lead_author, nil: false
      t.string :Co_author
      t.text :abstract, nil: false, default: ''

      t.timestamps
    end
  end
end
