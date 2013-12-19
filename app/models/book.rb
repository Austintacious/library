class Book < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :author
  validates_numericality_of :rating, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100
  has_many :checkouts

  class << self
    def seed
      book = Book.find_or_initialize_by(title: "The Golden Compass", author: "Philip Pullman", rating: 0)
      book.save!
      book2 = Book.find_or_initialize_by(title: "The Subtle Knife", author: "Philip Pullman", rating: 0)
      book2.save!
      book3 = Book.find_or_initialize_by(title: "The Amber Spyglass", author: "Philip Pullman", rating: 0)
      book3.save!
      book4 = Book.find_or_initialize_by(title: "American Gods", author: "Neil Gaiman", rating: 0)
      book4.save!
    end
  end

end
