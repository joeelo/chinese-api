class Like < ApplicationRecord
  belongs_to :user
  belongs_to :character

  validates_uniqueness_of :user_id, scope: :character_id
end
