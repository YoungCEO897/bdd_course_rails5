class Article < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :body
  
  belongs_to :user
  
  has_many :comments, dependent: :destroy
  
  default_scope { order(created_at: :desc) }
end
