class CreateSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :settings do |t|
      t.boolean :date_wise, default: false
      t.boolean :month_wise, default: false
      t.boolean :shift_wise, default: true
      t.boolean :operator_wise, default: true
      t.boolean :hour_wise, default: false
      t.boolean :program_wise, default: false
      t.boolean :email_notification, default: false
      t.boolean :sms, default: false
      t.boolean :notification, default: false
      #t.references :tenant, foreign_key: true
      t.string :updated_by

      t.timestamps
    end
  end
end
