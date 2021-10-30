class Category < ApplicationRecord
  has_many :gossips
  has_many :tags
end
