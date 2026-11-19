json.extract! loan, :id, :pickup_date, :expected_return_date, :return_date, :created_at, :updated_at
json.url loan_url(loan, format: :json)
