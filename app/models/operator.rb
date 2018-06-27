class Operator < ApplicationRecord
  acts_as_paranoid
  belongs_to :tenant, -> { with_deleted }
end
