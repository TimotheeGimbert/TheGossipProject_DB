class Category < ApplicationRecord
  belongs_to :tag
  belongs_to :gossip
end
