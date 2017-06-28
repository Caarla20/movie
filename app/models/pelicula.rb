class Pelicula < ApplicationRecord
	# validates :name, :stars, :main_actor, :year, presence:true
	# validates :name, uniqueness: true
	# validates :stars, :numericality => {greater_than_or_equal_to:0, less_than_or_equal_to:5}
	# validates :main_actor, :name, format: { with: /\A[a-zA-Z 0-9]+\z/ }
	# validates :year, numericality: true, length: { maximum: 4 }
end

	def self.search(search)
  		where("actor like ?", "%" + "%#{search}%" + "%")
	end
