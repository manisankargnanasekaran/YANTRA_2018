class CreateUserAuthLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_auth_logs do |t|
      t.string :auth_token
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
