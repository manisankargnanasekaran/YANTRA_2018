Role.create!([
  {role_name: "Altius", role_code: nil, is_active: true, deleted_at: nil},
  {role_name: "Client", role_code: nil, is_active: true, deleted_at: nil}
])
Shift.create!([
  {working_time: "23:59:59", no_of_shift: 6, day_start_time: "07:30AM", isactive: true, deleted_at: nil, working_time_dummy: nil, day_start_time_dummy: nil, tenant_id: 3},
  {working_time: "23:59:59", no_of_shift: 2, day_start_time: "09:00AM", isactive: true, deleted_at: nil, working_time_dummy: nil, day_start_time_dummy: nil, tenant_id: 2},
  {working_time: "23:59:59", no_of_shift: 3, day_start_time: "08:00AM", isactive: true, deleted_at: nil, working_time_dummy: nil, day_start_time_dummy: nil, tenant_id: 4},
  {working_time: "23:59:59", no_of_shift: 3, day_start_time: "08:00AM", isactive: true, deleted_at: nil, working_time_dummy: nil, day_start_time_dummy: nil, tenant_id: 8},
  {working_time: "23:59:59", no_of_shift: 3, day_start_time: "12:00AM", isactive: true, deleted_at: nil, working_time_dummy: nil, day_start_time_dummy: nil, tenant_id: 5}
])
Shifttransaction.create!([
  {shift_start_time: "07:30AM", shift_end_time: "12:00PM", actual_working_hours: "04:30:00", shift_no: 1, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 1},
  {shift_start_time: "12:00PM", shift_end_time: "04:00PM", actual_working_hours: "04:00:00", shift_no: 2, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 1},
  {shift_start_time: "04:00PM", shift_end_time: "08:00PM", actual_working_hours: "04:00:00", shift_no: 3, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 1},
  {shift_start_time: "08:00PM", shift_end_time: "12:00AM", actual_working_hours: "04:00:00", shift_no: 4, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 1},
  {shift_start_time: "12:00AM", shift_end_time: "04:00AM", actual_working_hours: "04:00:00", shift_no: 5, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 1},
  {shift_start_time: "04:00AM", shift_end_time: "07:30AM", actual_working_hours: "03:30:00", shift_no: 6, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 1},
  {shift_start_time: "09:00AM", shift_end_time: "09:00PM", actual_working_hours: "12:00:00", shift_no: 1, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 2},
  {shift_start_time: "09:00PM", shift_end_time: "09:00AM", actual_working_hours: "12:00:00", shift_no: 2, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 2},
  {shift_start_time: "08:00AM", shift_end_time: "04:30PM", actual_working_hours: "08:30:00", shift_no: 1, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 3},
  {shift_start_time: "04:30PM", shift_end_time: "01:00AM", actual_working_hours: "08:30:00", shift_no: 2, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 3},
  {shift_start_time: "01:00AM", shift_end_time: "08:00AM", actual_working_hours: "07:00:00", shift_no: 3, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 3},
  {shift_start_time: "08:00AM", shift_end_time: "04:30PM", actual_working_hours: "08:30:00", shift_no: 1, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 4},
  {shift_start_time: "04:30PM", shift_end_time: "01:00AM", actual_working_hours: "08:30:00", shift_no: 2, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 4},
  {shift_start_time: "01:00AM", shift_end_time: "08:00AM", actual_working_hours: "07:00:00", shift_no: 3, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 4},
  {shift_start_time: "12:00AM", shift_end_time: "08:00AM", actual_working_hours: "08:00:00", shift_no: 1, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 5},
  {shift_start_time: "08:00AM", shift_end_time: "04:00PM", actual_working_hours: "08:00:00", shift_no: 2, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 5},
  {shift_start_time: "04:00PM", shift_end_time: "12:00AM", actual_working_hours: "08:00:00", shift_no: 3, isactive: true, deleted_at: nil, shift_start_time_dummy: nil, shift_end_time_dummy: nil, actual_working_hours_dummy: nil, actual_working_without_break: nil, shift_id: 5}
])
Tenant.create!([
  {tenant_name: "Altius Technologys", address_line1: "3-343, Saaibaba coloni", address_line2: "Bharath park", city: "Coimbatore", state: "Tamilnadu", country: "india", pincode: "568595", active_by: nil, isactive: false, deleted_at: nil},
  {tenant_name: "Glider Tech Automation", address_line1: "3-343, Ganapathi", address_line2: "Sakthi Rood", city: "Coimbatore", state: "Tamilnadu", country: "india", pincode: "568595", active_by: nil, isactive: false, deleted_at: nil},
  {tenant_name: "bakgiyam engineering", address_line1: "3-343, Chithra", address_line2: "Selam Rood", city: "Coimbatore", state: "Tamilnadu", country: "india", pincode: "568594", active_by: nil, isactive: false, deleted_at: nil},
  {tenant_name: "Eco Metal Art Technologies", address_line1: "3-343, Annur", address_line2: "Sakthi Rood", city: "Coimbatore", state: "Tamilnadu", country: "india", pincode: "568594", active_by: nil, isactive: false, deleted_at: nil},
  {tenant_name: "Precicraft CNC Works", address_line1: "3-343, m.pallyam", address_line2: "Trichy Rood", city: "Coimbatore", state: "Tamilnadu", country: "india", pincode: "568594", active_by: nil, isactive: false, deleted_at: nil},
  {tenant_name: "Suresh Gears Industry", address_line1: "3-343, P.N. pallyam", address_line2: "Selam Rood", city: "Coimbatore", state: "Tamilnadu", country: "india", pincode: "568594", active_by: nil, isactive: false, deleted_at: nil},
  {tenant_name: "Super Machine Works Private Limited", address_line1: "3-343, Aavarampallyam", address_line2: "Ganapathi Rood", city: "Coimbatore", state: "Tamilnadu", country: "india", pincode: "568594", active_by: nil, isactive: false, deleted_at: nil},
  {tenant_name: "RABWIN INDUSTRIES PVT.LTD", address_line1: "3-343, Aavarampallyam2", address_line2: "Ganapathi Rood", city: "Coimbatore", state: "Tamilnadu", country: "india", pincode: "568594", active_by: nil, isactive: false, deleted_at: nil}
])
User.create!([
  {first_name: "manisankar", last_name: "gnanasekaran", email: "altius@adcltech.com", password_digest: "$2a$10$KuDcIQ/3C7emrnl6tXw08O6KZMT1bmBX45WbmTP4GTRqdcd76lpem", phone_number: "7402124051", player_id: nil, remarks: "true", isactive: true, deleted_at: nil, role_id: 1, user_type_id: 1, tenant_id: 1},
  {first_name: "Sathish", last_name: "Kumar", email: "glidertechautomation@yahoo.com", password_digest: "$2a$10$/hkuLszTOxtZzDX0CLmIGO3Jub.MYYVmKaXwV2Aeq7I7Z.zi25gVm", phone_number: "9843693938", player_id: nil, remarks: "true", isactive: true, deleted_at: nil, role_id: 2, user_type_id: 2, tenant_id: 2},
  {first_name: "Ramesh Varma", last_name: "M.S", email: "machineshop1@bakgiyam.com", password_digest: "$2a$10$dQx7ggURBc9flImPTXns/.NHi0.KIVcCwQryZDpsz3R3VqcVq66b.", phone_number: "9443316941", player_id: nil, remarks: "true", isactive: true, deleted_at: nil, role_id: 2, user_type_id: 2, tenant_id: 3},
  {first_name: "Muralidharan", last_name: "S", email: "info@ematindia.com", password_digest: "$2a$10$6IFaGGPYuT5xxA4ewYe5BecoO8P4pE39IDp9WDtevvqfWuJPzl7e6", phone_number: "9944709300", player_id: nil, remarks: "true", isactive: true, deleted_at: nil, role_id: 2, user_type_id: 2, tenant_id: 4},
  {first_name: "Raja", last_name: "A", email: "raja@gmail.com", password_digest: "$2a$10$iUBaHAGE0LrBfccrmjrNO.1znOu9DzaRI/VsLU689XYoDGcg4QBgi", phone_number: "9859558422", player_id: nil, remarks: "true", isactive: true, deleted_at: nil, role_id: 2, user_type_id: 2, tenant_id: 5},
  {first_name: "suresh", last_name: "s", email: "suresh@gmail.com", password_digest: "$2a$10$yV2u2I.oSMAuf6F8yM0RZOAkIbo2sQ25CsM.F0ZBddgG29gu4Tksq", phone_number: "987848596555", player_id: nil, remarks: "true", isactive: true, deleted_at: nil, role_id: 2, user_type_id: 2, tenant_id: 6},
  {first_name: "super", last_name: "s", email: "super@gmail.com", password_digest: "$2a$10$ky8BGmO7TPc/uWxLr7H7pOXyyAWhAcpteKSq2LYaR/IF.6Uv/rHWy", phone_number: "9878485955", player_id: nil, remarks: "true", isactive: true, deleted_at: nil, role_id: 2, user_type_id: 2, tenant_id: 7},
  {first_name: "super", last_name: "s", email: "a.vijaykumar@rabwin.in", password_digest: "$2a$10$OT/2xZm45ynnzWpZk8ngfeeQmOB4SsFe7phIF6DwGs4oJZTPf7yCK", phone_number: "98784853435", player_id: nil, remarks: "true", isactive: true, deleted_at: nil, role_id: 2, user_type_id: 2, tenant_id: 8}
])
UserType.create!([
  {user_type_name: "Altius", description: nil, isactive: true, deleted_at: nil},
  {user_type_name: "Client", description: nil, isactive: true, deleted_at: nil}
])
