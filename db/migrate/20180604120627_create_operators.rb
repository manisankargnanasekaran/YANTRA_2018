class CreateOperators < ActiveRecord::Migration[5.1]
  def change
    create_table :operators do |t|
      t.string :operator_name
      t.string :operator_spec_id
      t.string :description
      t.boolean :is_active, default: true
      t.datetime :deleted_at
      t.references :tenant, foreign_key: true

      t.timestamps
    end
  end
end
