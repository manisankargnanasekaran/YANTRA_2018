class CreateMachines < ActiveRecord::Migration[5.1]
  def change
    create_table :machines do |t|
      t.string :machine_name
      t.string :machine_model
      t.string :machine_serial_no
      t.string :machine_type
      t.string :machine_ip
      t.string :unit
      t.string :device_id
      t.boolean :isactive, default: true
      t.datetime :deleted_at
      t.references :tenant, foreign_key: true

      t.timestamps
    end
  end
end
