class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.string :working_time
      t.integer :no_of_shift
      t.string :day_start_time
      t.boolean :isactive, default: true
      t.datetime :deleted_at
      t.time :working_time_dummy
      t.time :day_start_time_dummy
      t.references :tenant, foreign_key: true

      t.timestamps
    end
  end
end
