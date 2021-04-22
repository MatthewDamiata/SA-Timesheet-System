class User < ActiveRecord::Base
	has_many :authorizations, :dependent => :destroy
  validates :name, :email, :presence => true
end
