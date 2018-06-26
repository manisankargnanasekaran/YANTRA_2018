# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180604123035) do

  create_table "alarms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "alarm_type"
    t.integer "alarm_number"
    t.string "alarm_message"
    t.integer "emergency"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.bigint "machine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_alarms_on_machine_id"
  end

  create_table "connection_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "date"
    t.string "status"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_connection_logs_on_tenant_id"
  end

  create_table "ethernet_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "date"
    t.string "status"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.bigint "machine_id"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_ethernet_logs_on_machine_id"
    t.index ["tenant_id"], name: "index_ethernet_logs_on_tenant_id"
  end

  create_table "machine_daily_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "parts_count"
    t.string "machine_status"
    t.string "job_id"
    t.string "total_run_time"
    t.string "total_cutting_time"
    t.string "run_time"
    t.string "feed_rate"
    t.string "cutting_speed"
    t.string "axis_load"
    t.string "axis_name"
    t.string "spindle_speed"
    t.string "spindle_load"
    t.string "total_run_second"
    t.string "programe_number"
    t.string "programe_description"
    t.string "run_second"
    t.datetime "machine_time"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.bigint "machine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_machine_daily_logs_on_machine_id"
  end

  create_table "machine_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "parts_count"
    t.string "machine_status"
    t.string "job_id"
    t.string "total_run_time"
    t.string "total_cutting_time"
    t.string "run_time"
    t.string "feed_rate"
    t.string "cutting_speed"
    t.string "axis_load"
    t.string "axis_name"
    t.string "spindle_speed"
    t.string "spindle_load"
    t.string "total_run_second"
    t.string "programe_number"
    t.string "programe_description"
    t.string "run_second"
    t.datetime "machine_time"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.bigint "machine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_machine_logs_on_machine_id"
  end

  create_table "machine_monthly_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "parts_count"
    t.string "machine_status"
    t.string "job_id"
    t.string "total_run_time"
    t.string "total_cutting_time"
    t.string "run_time"
    t.string "feed_rate"
    t.string "cutting_speed"
    t.string "axis_load"
    t.string "axis_name"
    t.string "spindle_speed"
    t.string "spindle_load"
    t.string "total_run_second"
    t.string "programe_number"
    t.string "programe_description"
    t.string "run_second"
    t.datetime "machine_time"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.bigint "machine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_machine_monthly_logs_on_machine_id"
  end

  create_table "machines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "machine_name"
    t.string "machine_model"
    t.string "machine_serial_no"
    t.string "machine_type"
    t.string "machine_ip"
    t.string "unit"
    t.string "device_id"
    t.boolean "isactive", default: true
    t.datetime "deleted_at"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_machines_on_tenant_id"
  end

  create_table "operator_allocations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "operator_id"
    t.bigint "shifttransaction_id"
    t.bigint "machine_id"
    t.bigint "tenant_id"
    t.string "description"
    t.date "from_date"
    t.date "to_date"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_operator_allocations_on_machine_id"
    t.index ["operator_id"], name: "index_operator_allocations_on_operator_id"
    t.index ["shifttransaction_id"], name: "index_operator_allocations_on_shifttransaction_id"
    t.index ["tenant_id"], name: "index_operator_allocations_on_tenant_id"
  end

  create_table "operator_mapping_allocations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "date"
    t.bigint "operator_id"
    t.bigint "operator_allocation_id"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["operator_allocation_id"], name: "index_operator_mapping_allocations_on_operator_allocation_id"
    t.index ["operator_id"], name: "index_operator_mapping_allocations_on_operator_id"
  end

  create_table "operators", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "operator_name"
    t.string "operator_spec_id"
    t.string "description"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_operators_on_tenant_id"
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "role_name"
    t.string "role_code"
    t.boolean "is_active", default: true
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "working_time"
    t.integer "no_of_shift"
    t.string "day_start_time"
    t.boolean "isactive", default: true
    t.datetime "deleted_at"
    t.time "working_time_dummy"
    t.time "day_start_time_dummy"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tenant_id"], name: "index_shifts_on_tenant_id"
  end

  create_table "shifttransactions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "shift_start_time"
    t.string "shift_end_time"
    t.string "actual_working_hours"
    t.integer "shift_no"
    t.boolean "isactive", default: true
    t.datetime "deleted_at"
    t.time "shift_start_time_dummy"
    t.time "shift_end_time_dummy"
    t.time "actual_working_hours_dummy"
    t.string "actual_working_without_break"
    t.bigint "shift_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shift_id"], name: "index_shifttransactions_on_shift_id"
  end

  create_table "tenants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "tenant_name"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "pincode"
    t.string "active_by"
    t.boolean "isactive", default: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "user_type_name"
    t.string "description"
    t.boolean "isactive", default: true
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.string "player_id"
    t.string "remarks"
    t.boolean "isactive", default: true
    t.datetime "deleted_at"
    t.bigint "role_id"
    t.bigint "user_type_id"
    t.bigint "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["tenant_id"], name: "index_users_on_tenant_id"
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

  add_foreign_key "alarms", "machines"
  add_foreign_key "connection_logs", "tenants"
  add_foreign_key "ethernet_logs", "machines"
  add_foreign_key "ethernet_logs", "tenants"
  add_foreign_key "machine_daily_logs", "machines"
  add_foreign_key "machine_logs", "machines"
  add_foreign_key "machine_monthly_logs", "machines"
  add_foreign_key "machines", "tenants"
  add_foreign_key "operator_allocations", "machines"
  add_foreign_key "operator_allocations", "operators"
  add_foreign_key "operator_allocations", "shifttransactions"
  add_foreign_key "operator_allocations", "tenants"
  add_foreign_key "operator_mapping_allocations", "operator_allocations"
  add_foreign_key "operator_mapping_allocations", "operators"
  add_foreign_key "operators", "tenants"
  add_foreign_key "shifts", "tenants"
  add_foreign_key "shifttransactions", "shifts"
  add_foreign_key "users", "roles"
  add_foreign_key "users", "tenants"
  add_foreign_key "users", "user_types"
end
