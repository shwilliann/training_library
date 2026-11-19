json.extract! book, :id, :title, :year_of_publication, :isbn, :created_at, :updated_at
json.url book_url(book, format: :json)
