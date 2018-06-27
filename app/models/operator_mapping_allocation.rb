class OperatorMappingAllocation < ApplicationRecord
  acts_as_paranoid
  belongs_to :operator
  belongs_to :operator_allocation
end
