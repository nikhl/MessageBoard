class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :message, :title, :user_id
end
