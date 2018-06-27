class OperatorAllocation < ApplicationRecord
  acts_as_paranoid
  belongs_to :operator, -> { with_deleted }
  belongs_to :shifttransaction
  belongs_to :machine
  belongs_to :tenant
end
