json.id post.id
json.title post.title
json.content post.content
if post.comments
  json.comments post.comments do |comment|
    json.comment_id comment.id
    json.comment_text comment.comment_text
  end
end
json.created_at post.created_at
json.updated_at post.updated_at
