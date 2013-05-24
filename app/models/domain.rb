class Domain < ActiveRecord::Base
  belongs_to :server
  attr_accessible :comments, :ip, :name, :server_id
  has_many :domain_logs
end
