class Movie < ApplicationRecord
		validates :name, :details, presence: true

end
