class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.text :work_type
      t.references :organization, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.references :work_field, index: true, foreign_key: true
      t.references :city, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
