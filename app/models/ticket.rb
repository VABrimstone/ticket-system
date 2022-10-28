class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :department, optional: true

  validates :title,
    presence: true
  validates :message,
    presence: true

  enum :status, { open: 0, closed: 1, resolved: 2 }

  scope :ordered, -> { order(id: :desc) }
end
