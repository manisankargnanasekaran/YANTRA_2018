class CreateUserTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_types do |t|
      t.string :user_type_name
      t.string :description
      t.boolean :isactive, default: true
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
