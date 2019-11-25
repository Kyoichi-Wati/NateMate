class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id,presence: true
  validates :title,  presence: true
  validates :content,length: { maximum: 140 }
  validates :picture, presence: true
end