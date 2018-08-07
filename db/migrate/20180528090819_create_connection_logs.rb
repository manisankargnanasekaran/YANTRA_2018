class CreateConnectionLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :connection_logs do |t|
      t.datetime :date
      t.string :status
      t.boolean :is_active, default: true
      t.datetime :deleted_at
      #t.references :tenant, foreign_key: true
     

      t.timestamps
    end
  end
end
