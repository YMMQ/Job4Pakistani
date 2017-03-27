class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :advertise, index: true, foreign_key: true
      t.references :work_field, index: true, foreign_key: true
      t.references :degre, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true
      t.integer     :qty
      t.timestamps null: false
    end
  end
end
