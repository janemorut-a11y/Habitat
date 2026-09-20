class Goal < ApplicationRecord
  belongs_to :user

  has_many :check_ins, dependent: :destroy

  validates :title, presence: true
  validates :frequency, inclusion: { in: %w[daily weekly] }
  validates :target_count, numericality: { greater_than: 0 }
end
