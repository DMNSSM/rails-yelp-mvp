class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: %w(chinese italian belgian french japanese),
    message: "%{value} is not a valid category" }
  has_many :reviews, dependent: :destroy
end
