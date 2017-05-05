class Owner < ApplicationRecord
	has_many :dogs 
	has_many :likes
	has_many :comments 
	has_many :dislikes 
	validates :username, :password, presence: true 
	validates :username, uniqueness: true 
	has_secure_password
end
