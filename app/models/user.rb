class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable
        #  :recoverable, :rememberable, :validatable

  validates :email,
    presence:   true,
    uniqueness: true

  def name_or_email
    if name.nil? || name.empty?
      email
    else
      name
    end
  end
end
