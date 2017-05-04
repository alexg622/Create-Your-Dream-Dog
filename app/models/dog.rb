class Dog < ApplicationRecord
	belongs_to :owner 
	has_many :likes 
	has_many :dislikes 
	validates :name, presence: true 

	def if_owner_liked(user)
		if self.likes.any?
			owner_ids = self.likes.each_with_object([]) {|like, a| a << like.owner_id}
			if owner_ids.include?(user.id)
				return true
			end 
		end 
	end 
	def if_owner_disliked(user)
		if self.dislikes.any?
			owner_ids = self.dislikes.each_with_object([]) {|like, a| a << like.owner_id}
			if owner_ids.include?(user.id)
				return true
			end 
		end 
	end 
end
