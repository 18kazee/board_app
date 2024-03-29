class Board < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy 
  
  mount_uploader :board_image, BoardImageUploader
  validates :title, presence: true, length: {maximum: 255}
  validates :body, presence: true, length: {maximum: 65535}
end
