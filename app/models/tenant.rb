class Tenant < ApplicationRecord
	has_many :users
	has_one :shift
	accepts_nested_attributes_for :users, allow_destroy: true
end
