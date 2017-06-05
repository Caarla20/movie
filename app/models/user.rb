class User < ApplicationRecord
	has_one :setting

	devise :database_authenticatable, :registerable,
    	    :recoverable, :rememberable, :trackable, :validatable
end
