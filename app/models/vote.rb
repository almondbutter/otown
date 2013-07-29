class Vote < ActiveRecord::Base
  	# attr_accessible :title, :body
  	attr_accessible :link_id, :up
  	validate :user_id, :uniqueness => { :scope => :link_id }
    belongs_to :user
    belongs_to :link
end