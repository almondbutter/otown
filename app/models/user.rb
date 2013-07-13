class User < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible   :email, :username
  attr_accessor     :email, :username
end
