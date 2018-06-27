class Alarm < ApplicationRecord
  acts_as_paranoid
  belongs_to :machine
end
