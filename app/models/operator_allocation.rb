class OperatorAllocation < ApplicationRecord
  acts_as_paranoid
  belongs_to :operator, -> { with_deleted }
  belongs_to :shifttransaction, -> { with_deleted }
  belongs_to :machine, -> { with_deleted }
  belongs_to :tenant, -> { with_deleted }
end
