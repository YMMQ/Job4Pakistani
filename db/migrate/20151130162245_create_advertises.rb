class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.string :title
      t.text   :description
	  t.references :organization, index: true, foreign_key: true
      t.date :add_date
      t.date :last_date
      t.string :picture
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
