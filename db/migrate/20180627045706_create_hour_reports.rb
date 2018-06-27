class CreateHourReports < ActiveRecord::Migration[5.1]
  def change
    create_table :hour_reports do |t|
      t.date :date
      t.string :hour
      t.integer :shift_no
      t.string :time
      t.string :program_number
      t.string :job_description
      t.integer :parts_produced
      t.string :cycle_time
      t.string :loading_and_unloading_time
      t.string :ideal_time
      t.string :total_downtime
      t.string :acutal_running
      t.string :acutal_working_hours
      t.string :utilization
      t.string :single_parts
      t.references :shift, foreign_key: true
      t.references :operator, foreign_key: true
      t.references :machine, foreign_key: true
      t.references :tenant, foreign_key: true

      t.timestamps
    end
  end
end
