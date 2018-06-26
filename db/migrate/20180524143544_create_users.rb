class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :player_id
      t.string :remarks
      t.boolean :isactive, default: true
      t.datetime :deleted_at
      t.references :role, foreign_key: true
      t.references :user_type, foreign_key: true
      t.references :tenant, foreign_key: true

      t.timestamps
    end
  end
end
