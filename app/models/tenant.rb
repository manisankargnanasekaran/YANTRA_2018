class Tenant < ApplicationRecord
  after_create :create_tenant
  acts_as_paranoid
  has_many :users
  has_many :machines
  has_one :shift
  has_one :setting
  accepts_nested_attributes_for :users#, allow_destroy: true

  def create_tenant
    Apartment::Tenant.create(tenant_name)
  end
end
