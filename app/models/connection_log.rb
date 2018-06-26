class ConnectionLog < ApplicationRecord
  belongs_to :tenant
  belongs_to :machine
end
