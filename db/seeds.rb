if User.all.blank?
  User.create username: "emily", password: "12345678"
  User.create username: "jake", password: "12345678"
  5.times do
    user = User.new
    user.username = Faker::Name.first_name.downcase
    user.password = "12345678"
    user.save
  end
end

if Post.all.blank?
  Post.create title: "First post", content: "Hi. This is my first post."
  Post.create title: "My first post", content: "Hi. This is MY first post."

  15.times do
    post = Post.new
    post.title = Faker::Lorem.sentence
    post.content = Faker::Lorem.paragraph
    post.save
  end
end

if Comment.all.blank?
  10.times do
    comment = Comment.new
    comment.comment_text = Faker::Lorem.sentence
    comment.post_id = Post.all.map(&:id).sample
    comment.save
  end

end
