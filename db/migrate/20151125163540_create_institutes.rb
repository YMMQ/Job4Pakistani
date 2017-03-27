class CreateInstitutes < ActiveRecord::Migration
  def change
    create_table :institutes do |t|
	  t.references :province, foreign_key: true
      t.references :city, index: true, foreign_key: true
	  t.string :name
      t.timestamps null: false
    end
  end
end
