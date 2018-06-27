class ConnectionLog < ApplicationRecord
  acts_as_paranoid
  belongs_to :tenant, -> { with_deleted }
  belongs_to :machine, -> { with_deleted }
end
