json.extract! book_detail, :id, :title, :year_published, :price, :created_at, :updated_at
json.url book_detail_url(book_detail, format: :json)
