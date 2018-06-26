class User < ApplicationRecord
  belongs_to :role
  belongs_to :user_type
  belongs_to :tenant
  has_secure_password

  #accepts_nested_attributes_for :tenant, allow_destroy: true
end
