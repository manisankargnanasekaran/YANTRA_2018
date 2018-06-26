class CreateMachineLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :machine_logs do |t|
      t.string :parts_count
      t.string :machine_status
      t.string :job_id
      t.string :total_run_time
      t.string :total_cutting_time
      t.string :run_time
      t.string :feed_rate
      t.string :cutting_speed
      t.string :axis_load
      t.string :axis_name
      t.string :spindle_speed
      t.string :spindle_load
      t.string :total_run_second
      t.string :programe_number
      t.string :programe_description
      t.string :run_second
      t.datetime :machine_time
      t.boolean :is_active, default: true
      t.datetime :deleted_at
      t.references :machine, foreign_key: true

      t.timestamps
    end
  end
end
