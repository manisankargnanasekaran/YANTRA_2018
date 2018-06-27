class EthernetLog < ApplicationRecord
  acts_as_paranoid
  belongs_to :machine, -> { with_deleted }
  belongs_to :tenant, -> { with_deleted }
end
