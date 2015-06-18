json.array!(@comments) do |comment|
  json.extract! comment, :id, :post_id, :comment_id, :user_id, :body
  json.url comment_url(comment, format: :json)
end
