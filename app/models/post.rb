class Post < ActiveRecord::Base

	belongs_to :user

	validates :title, presence: true

	validates :author, presence: true

	validates :content, presence: true

end
