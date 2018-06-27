class User < ApplicationRecord
  acts_as_paranoid
  belongs_to :role
  belongs_to :user_type
  belongs_to :tenant
  has_secure_password
end
