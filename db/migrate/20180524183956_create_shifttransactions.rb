class CreateShifttransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :shifttransactions do |t|
      t.string :shift_start_time
      t.string :shift_end_time
      t.string :actual_working_hours
      t.integer :shift_no
      t.boolean :isactive, default: true
      t.datetime :deleted_at
      t.time :shift_start_time_dummy
      t.time :shift_end_time_dummy
      t.time :actual_working_hours_dummy
      t.string :actual_working_without_break
      
      t.references :shift, foreign_key: true

      t.timestamps
    end
  end
end
