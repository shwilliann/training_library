json.extract! reservation, :id, :reservation, :expiration_date, :status, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
