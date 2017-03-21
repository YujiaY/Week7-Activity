class Anime < ApplicationRecord
	validates :name, :details, presence: true
	
end
