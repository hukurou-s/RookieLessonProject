class CreatePapers < ActiveRecord::Migration[5.0]
  def change
    create_table :papers do |t|
      t.string :title_ja, nil: false, default: ''
      t.string :title_en, nil: false, default: ''
      t.string :lead_author, nil: false
      t.string :co_author
      t.text :abstract, nil: false, default: ''

      t.timestamps
    end
  end
end
