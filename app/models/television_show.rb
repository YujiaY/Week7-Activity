class TelevisionShow < ApplicationRecord
		validates :name, :details, presence: true

end
