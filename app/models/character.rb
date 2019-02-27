class Character < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  has_many :favorites, through: :users, dependent: :destroy
end
