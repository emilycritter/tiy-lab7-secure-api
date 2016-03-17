json.id post.id
json.title post.title
json.content post.content
json.created_at post.created_at
json.updated_at post.updated_at
json.user do
  json.id post.user.id
  json.username post.user.username
end
