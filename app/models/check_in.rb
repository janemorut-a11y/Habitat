class CheckIn < ApplicationRecord
  belongs_to :goal

  validates :date, presence: true
end
  