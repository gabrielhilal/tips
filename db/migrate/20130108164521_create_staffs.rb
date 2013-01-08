class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.decimal :hours
      t.integer :tip_id

      t.timestamps
    end
  end
end
