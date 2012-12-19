class Domain < ActiveRecord::Base
  belongs_to :server
  attr_accessible :comments, :ip, :name, :server_id
end
