json.id post.id
json.title post.title
json.content post.content
if post.comments.present?
  json.comments.each do |comment|
    json.comment_id post.comment.id
    json.comment.comment_test post.comment.comment_text
  end
end
json.created_at post.created_at
json.updated_at post.updated_at
