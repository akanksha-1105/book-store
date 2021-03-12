class BookDetail < ApplicationRecord
  belongs_to :supplier
  belongs_to :auther
  has_many :review
end
