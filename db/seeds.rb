require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  User.create(username: Faker::Name.name, password: 'password' )
end

User.all.each do |user|
  5.times do
    Post.create(user_id: user.id, title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph , url: nil)
  end
  5.times do
    Post.create(user_id: user.id, title: Faker::Lorem.sentence, body: nil, url: Faker::Internet.url )
  end
end

User.last(20).each do |user|
  Post.all.each do |post|
    Comment.create(post_id: post.id, user_id: user.id, body: Faker::Lorem.sentence, comment_id: nil)
  end
end

Comment.first(50).each do |comment|
  Comment.create(comment_id: comment.id, post_id: comment.post.id, user_id: User.find(rand(100)), body: Faker::Lorem.sentence)
end
