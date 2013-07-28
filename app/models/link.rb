class Link < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :url, :title, :location, :datetime

  belongs_to :user
  has_many   :comments
  has_many   :votes

end
