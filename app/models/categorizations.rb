class Categorizations < ActiveRecord::Base
  belongs_to :book
  belongs_to :category
  validates_presence_of :book_id, :category_id
end
