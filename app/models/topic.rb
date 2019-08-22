class Topic < ApplicationRecord
 
  
  belongs_to :user
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
  
  mount_uploader :image, ImageUploader
  
  def self.search(search)
    return Topic.all unless search
    Topic.where(['class_name LIKE ?',"%#{search}%"])
  end
end
