class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :role_name
      t.string :role_code
      t.boolean :is_active, default: true
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
