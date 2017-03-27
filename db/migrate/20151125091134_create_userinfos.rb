class CreateUserinfos < ActiveRecord::Migration
  def change
    create_table :userinfos do |t|
      t.references :user, index: true, foreign_key: true
      t.date :date_of_birth
      t.string :gender
      t.string :mobile
      t.text :address
      t.references :province, foreign_key: true
      t.references :city, foreign_key: true
      t.string :cnic

      t.timestamps null: false
    end
  end
end
