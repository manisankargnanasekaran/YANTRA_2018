class Tenant < ApplicationRecord
  acts_as_paranoid
  has_many :users
  has_many :machines
  has_one :shift
  has_one :setting
  accepts_nested_attributes_for :users#, allow_destroy: true
end
