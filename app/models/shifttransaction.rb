class Shifttransaction < ApplicationRecord
  acts_as_paranoid
  belongs_to :shift, -> { with_deleted }
end
