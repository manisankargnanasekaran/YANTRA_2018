class OperatorMappingAllocation < ApplicationRecord
  acts_as_paranoid
  belongs_to :operator, -> { with_deleted }
  belongs_to :operator_allocation, -> { with_deleted }
end
