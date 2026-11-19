json.extract! review, :id, :notice, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
