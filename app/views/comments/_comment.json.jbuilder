json.extract! comment, :id, :project_id, :user_id, :body, :created_at, :updated_at
json.url comment_url(comment, format: :json)