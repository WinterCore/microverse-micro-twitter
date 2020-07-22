class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true, presence: true, length: { minimum: 3 }
  validates :name, presence: true, length: { minimum: 3 }

  has_many :tweets
end
