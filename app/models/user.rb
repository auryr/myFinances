class User < ApplicationRecord
  has_many :categories
  has_many :budgets
  has_many :transactions , through: :categories
end
