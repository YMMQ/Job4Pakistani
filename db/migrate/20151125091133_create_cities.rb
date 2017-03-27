class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
	  t.references :province, foreign_key: true
      t.string :name
    end
  end
end
