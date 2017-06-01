class Actor < ApplicationRecord
	validates :name, :nationality, :year, presence:true
	validates :name,  uniqueness: true
	validates :nationality, format: { with: /\A[a-zA-Z 0-9]+\z/ }
	validates :year, numericality: true, length: { maximum: 4 }
end
