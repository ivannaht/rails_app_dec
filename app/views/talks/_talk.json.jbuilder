json.extract! talk, :id, :title, :text, :photo, :longitude, :latitude, :user_id, :allow_comments, :show_likes_count, :created_at, :updated_at
json.url talk_url(talk, format: :json)
