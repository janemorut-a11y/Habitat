class Goal < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :frequency, inclusion: { in: %w[daily weekly] }
  validates :target_count, numericality: { greater_than: 0 }
end
