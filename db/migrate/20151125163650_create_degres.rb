class CreateDegres < ActiveRecord::Migration
  def change
    create_table :degres do |t|
      t.references :tdegree, foreign_key: true
      t.string :name
    end
  end
end
