class User < ApplicationRecord
  has_secure_password
  has_many :likes, dependent: :destroy
  has_many :characters, through: :likes
  has_many :favorites, dependent: :destroy
  has_many :scores, dependent: :destroy
end
