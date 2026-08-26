class Look < ApplicationRecord
  belongs_to :user
  has_many :tags
  has_and_belongs_to_many :clothing_items # Tabela intermediária para Looks e ClothingItems

  # Validações
  validates :description, presence: true
end
