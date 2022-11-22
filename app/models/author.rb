class Author < ApplicationRecord
	has_many :categories
	has_many :books  , :through => :categories,  dependent: :destroy
end
