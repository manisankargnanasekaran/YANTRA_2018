class Report < ApplicationRecord
  belongs_to :shift
  belongs_to :operator
  belongs_to :machine
  belongs_to :tenant
end
