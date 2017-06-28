class User < ApplicationRecord
	has_one :setting

	has_many :payments

	devise :database_authenticatable, :registerable,
    	    :recoverable, :rememberable, :trackable, :validatable
end
