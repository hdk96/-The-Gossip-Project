class User < ApplicationRecord
	has_many :private_messages 
	has_many :gossips 
	has_many :comment 
	has_many :likes 
	has_many :tags 

	belongs_to :city
end
