class EthernetLog < ApplicationRecord
  belongs_to :machine
  belongs_to :tenant
end
