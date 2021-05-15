 class User < ActiveRecord::Base
	has_many :authorizations, :dependent => :destroy
	has_one :profile, :dependent => :destroy
  validates :name, :email, :presence => true
	validate :staff_or_student
	
	def staff_or_student
    errors.add(:email, "must be for Binghamton University") if
    email.split('@')[1] != "binghamton.edu"
  end
	
	
	def self.create_with_omniauth info
		create!(name: info['name'], email: info['email'])
  end
	
	
	def create_profile
    Profile.create(user_id: self.id)
  end
	
  def self.find_with_auth_hash info
    User.find_by(name: info['name'], email: info['email'])
  end
end
