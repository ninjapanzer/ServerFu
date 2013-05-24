class DomainLog < ActiveRecord::Base
  belongs_to :domain
  attr_accessible :body, :title
end
