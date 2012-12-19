class Server < ActiveRecord::Base
  attr_accessible :comments, :ip, :location, :name
end
