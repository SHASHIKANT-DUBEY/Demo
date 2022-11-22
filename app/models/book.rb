class Book < ApplicationRecord
	has_many :categories
	has_many :authors , :through=> :categories 

	validates :name , presence: true

	def shashi
		puts "this is fullname"
	end
end
