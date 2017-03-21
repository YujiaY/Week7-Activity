json.extract! movie, :id, :name, :details, :created_at, :updated_at
json.url movie_url(movie, format: :json)
