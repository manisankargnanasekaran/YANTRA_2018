class ProgramReport < ApplicationRecord
  belongs_to :shift, -> { with_deleted }
  belongs_to :operator, -> { with_deleted }, :optional=>true
  belongs_to :machine, -> { with_deleted }
  belongs_to :tenant, -> { with_deleted }
end
