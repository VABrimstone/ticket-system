class Department < ApplicationRecord
  enum :status, { active: 0, inactive: 1 }

  validates :title,
    presence:   true,
    uniqueness: true

  scope :ordered_alphabetically, ->{ order(title: :asc) }
end
