class CreateTdegrees < ActiveRecord::Migration
  def change
    create_table :tdegrees do |t|
      t.string :name
    end
  end
end
