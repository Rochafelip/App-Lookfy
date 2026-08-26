class User < ApplicationRecord
    # Associações
  has_many :looks
  has_many :clothing_items
  has_many :friendships
  has_many :friends, through: :friendships, source: :friend

  # Validações
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
