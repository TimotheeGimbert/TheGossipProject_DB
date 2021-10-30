class Gossip < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :tags, through: :category
end
