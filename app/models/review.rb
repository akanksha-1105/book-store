class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :book_details
end
