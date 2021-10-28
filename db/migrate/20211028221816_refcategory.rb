class Refcategory < ActiveRecord::Migration[5.2]
  def change
    add_reference :gossips, :category, foreign_key: true
    add_reference :tags, :category, foreign_key: true
  end
end
