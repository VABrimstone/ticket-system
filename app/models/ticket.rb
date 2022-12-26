class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :department, optional: true
  belongs_to :mentioned_user, class_name: 'User', optional: true

  has_many :replies, dependent: :destroy

  validates :title,
    presence: true
  validates :message,
    presence: true

  enum :status, { open: 0, closed: 1, resolved: 2 }

  scope :ordered, -> { order(id: :desc) }
end
