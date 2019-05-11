json.extract! venue, :id, :name, :site_url, :phone, :email, :created_at, :updated_at
json.url venue_url(venue, format: :json)
