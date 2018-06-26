class CreateAlarms < ActiveRecord::Migration[5.1]
  def change
    create_table :alarms do |t|
      t.integer :alarm_type
      t.integer :alarm_number
      t.string :alarm_message
      t.integer :emergency
      t.boolean :is_active, default: true
      t.datetime :deleted_at
      t.references :machine, foreign_key: true

      t.timestamps
    end
  end
end
