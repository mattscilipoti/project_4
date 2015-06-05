class Comment < ActiveRecord::Base
  validates :body, :post_id, :profile_id, presence: true
  belongs_to :profile
  belongs_to :post
end
