class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
      t.string :tenant_name
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.string :active_by
      t.boolean :isactive, default: false
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
