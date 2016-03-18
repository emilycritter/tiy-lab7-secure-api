json.id post.id
json.title post.title
json.content post.content
json.comments post.comments do |comment|
  json.comment_id comment.id
  json.comment.comment_test comment.comment_text
end
json.created_at post.created_at
json.updated_at post.updated_at
