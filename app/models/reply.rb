class Reply < ApplicationRecord
  belongs_to :ticket
  belongs_to :user

  validates :comment,
    presence: true
end
