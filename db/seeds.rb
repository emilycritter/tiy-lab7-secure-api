if Post.all.blank?
  Post.create title: "First post", content: "Hi. This is my first post.", user_id: 1
  Post.create title: "My first post", content: "Hi. This is MY first post.", user_id: 2
end

if User.all.blank?
  User.create username: "emily", password: "12345678"
  User.create username: "jake", password: "12345678"
end
