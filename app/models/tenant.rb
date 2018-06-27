class Tenant < ApplicationRecord
  acts_as_paranoid
  has_many :users
  has_one :shift
  accepts_nested_attributes_for :users, allow_destroy: true
end
