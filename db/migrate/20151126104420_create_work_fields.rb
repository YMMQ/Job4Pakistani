class CreateWorkFields < ActiveRecord::Migration
  def change
    create_table :work_fields do |t|
      t.string :field_name
    end
  end
end
