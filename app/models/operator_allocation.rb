class OperatorAllocation < ApplicationRecord
  belongs_to :operator
  belongs_to :shifttransaction
  belongs_to :machine
  belongs_to :tenant
end
