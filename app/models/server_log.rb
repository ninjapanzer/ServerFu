class ServerLog < ActiveRecord::Base
  belongs_to :server
  attr_accessible :body, :title
end
