 class User < ActiveRecord::Base
	has_many :authorizations, :dependent => :destroy
	has_one :profile, :dependent => :destroy
  validates :name, :email, :presence => true
	validate :staff_or_student
	
	def staff_or_student
    after_split = email.split('@')[1]
    if after_split != "binghamton.edu" && after_split != "binghamtonsa.org"
      errors.add(:email, "must be for Binghamton University or Binghamton SA")
    end
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
