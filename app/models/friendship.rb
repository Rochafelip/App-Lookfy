class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  validates :status, inclusion: { in: %w(pending accepted rejected) }
  validates :friend_id, uniqueness: { scope: :user_id, message: "já é seu amigo" }
  validate :cannot_friend_self

  private

  def cannot_friend_self
    errors.add(:friend_id, "não pode ser você mesmo") if user_id == friend_id
  end
end
