class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, length: { minimum: 3,  maximum: 30 }, presence: true
  validates :last_name, length: { minimum: 3,  maximum: 30 }, presence: true

  validates :email, {
  email: true,
  length: { maximum: 50 },
  presence: true,
  uniqueness: true,
  }

  validates :password, length: { minimum: 8}, presence: true, confirmation: true
end
