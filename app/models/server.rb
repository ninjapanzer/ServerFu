class Server < ActiveRecord::Base
  attr_accessible :comments, :ip, :location, :name
  has_many :server_logs
  has_many :domains
end
