class TopMovie < ApplicationRecord
	validates :name, :main_actor, :stars, presence:true
	validates :name, uniqueness: true
	validates :main_actor, :name, format: { with: /\A[a-zA-Z 0-9]+\z/ }
	validates :stars, :numericality => {greater_than_or_equal_to:0, less_than_or_equal_to:5}
end
