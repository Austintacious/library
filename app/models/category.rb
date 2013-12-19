class Category < ActiveRecord::Base

  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :books, through: :categorizations
  has_many :categorizations

  class << self
    def seed
      Category.find_or_create_by(name: 'Sci-Fi')
      Category.find_or_create_by(name:'Fantasy')
      Category.find_or_create_by(name:'Horror')
    end
  end

end
