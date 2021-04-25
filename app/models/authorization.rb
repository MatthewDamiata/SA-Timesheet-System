class Authorization < ActiveRecord::Base
  belongs_to :user
  validates :provider, :uid, :presence => true
	 def self.create_with_omniauth(auth, user) 

  end
end
