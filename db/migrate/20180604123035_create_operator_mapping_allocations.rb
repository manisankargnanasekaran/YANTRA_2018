class CreateOperatorMappingAllocations < ActiveRecord::Migration[5.1]
  def change
    create_table :operator_mapping_allocations do |t|
      t.date :date
      t.references :operator, foreign_key: true
      t.references :operator_allocation, foreign_key: true
      t.boolean :is_active, default: true
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
