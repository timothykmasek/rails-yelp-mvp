class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews, dependent: :destroy
end
