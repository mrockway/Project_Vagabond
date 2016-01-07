class User < ActiveRecord::Base
	
	has_attached_file :image, :styles => { large: "600x600", medium: "200x280", thumb: "260x300" },
	:default_url => "thumb/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	has_secure_password

	has_many :posts, dependent: :destroy

	validates :first_name, presence: true

	validates :last_name, presence: true

	validates :current_city, presence: true

	validates :email, presence: true, uniqueness: true	

	validates :password, presence: true, on: :create

	# validates :password_confirmation, presence: true

end