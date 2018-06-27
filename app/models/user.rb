class User < ApplicationRecord
  acts_as_paranoid
  belongs_to :role, -> { with_deleted }
  belongs_to :user_type, -> { with_deleted }
  belongs_to :tenant, -> { with_deleted }
  has_secure_password
end
