class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable
        #  :recoverable, :rememberable, :validatable

  has_many :tickets,
    dependent: :nullify

  enum :role,   { regular: 0, admin: 1 }
  enum :status, { active: 0, inactive: 1 }

  validates :email,
    presence:   true,
    uniqueness: true

  scope :ordered, -> { order(id: :desc) }
end
