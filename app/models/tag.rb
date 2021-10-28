class Tag < ApplicationRecord
  has_many :categories
  has_many :gossips, through: :categories
end
