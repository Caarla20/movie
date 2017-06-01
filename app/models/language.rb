class Language < ApplicationRecord
	validates :language, uniqueness: true
end
