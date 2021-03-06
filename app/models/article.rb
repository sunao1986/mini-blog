class Article < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates :title, presence: true
  validates :text, presence: true
end
