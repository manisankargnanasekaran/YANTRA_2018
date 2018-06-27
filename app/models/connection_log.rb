class ConnectionLog < ApplicationRecord
  acts_as_paranoid
  belongs_to :tenant
  belongs_to :machine
end
