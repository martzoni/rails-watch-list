class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :photo, presence: true
end
