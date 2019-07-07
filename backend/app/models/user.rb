class User < ApplicationRecord
  has_many :reservations
  has_many :rooms, through: :reservations

  has_secure_password 

  # validates :username, {uniqeness: true}
  # validates :email, {uniqeness: true}



  def full_name
		[self.first_name, ' ', self.last_name].join
  end
  
end
