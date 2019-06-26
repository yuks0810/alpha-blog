class Article < ActiveRecord::Base
  # user is singular coz this is single side of has_many
  belongs_to :user
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 3, maximum: 300}
  validates :user_id, presence: true
  
  
end