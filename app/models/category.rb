class Category < ApplicationRecord
  has_many :transacionts
  belongs_to :user

end
