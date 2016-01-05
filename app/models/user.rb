class User < ActiveRecord::Base

	has_secure_password

	has_many :posts, dependent: :destroy

	validates :first_name, presence: true

	validates :last_name, presence: true

	validates :current_city, presence: true

	validates :email, presence: true	

	validates :password, presence: true

	# validates :password_confirmation, presence: true

end