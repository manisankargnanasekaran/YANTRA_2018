class CreateOperatorAllocations < ActiveRecord::Migration[5.1]
  def change
    create_table :operator_allocations do |t|
      t.references :operator, foreign_key: true
      t.references :shifttransaction, foreign_key: true
      t.references :machine, foreign_key: true
      t.references :tenant, foreign_key: true
      t.string :description
      t.date :from_date
      t.date :to_date
      t.boolean :is_active, default: true
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
