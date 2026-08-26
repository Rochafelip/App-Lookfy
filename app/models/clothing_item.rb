class ClothingItem < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :looks # Tabela intermediária para Looks e ClothingItems

  # Validações
  validates :name, presence: true
end
