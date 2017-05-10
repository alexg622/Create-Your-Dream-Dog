class Comment < ApplicationRecord
	belongs_to :owner 
	belongs_to :dog
	validates :description, presence: true
end
