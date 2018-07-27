class Gossip < ApplicationRecord
	has_many :comments 
	has_many :likes 

	has_and_belongs_to_many :tags

	belongs_to :user
end
