class EthernetLog < ApplicationRecord
  acts_as_paranoid
  belongs_to :machine
  belongs_to :tenant
end
