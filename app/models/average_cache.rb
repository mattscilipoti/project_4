class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Profile"
  belongs_to :rateable, :polymorphic => true
end
