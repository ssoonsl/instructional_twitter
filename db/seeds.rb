require 'faker'

# 20.times do
#   email = Faker::Internet.email
#   password = 123123
#   User.create(email: email, password: password)
# end
#
# for i in (1..30)
#   body = Faker::Lorem.paragraph
#   Tweet.create(user: User.find(i/2+1), body: body)
# end

for i in (1..30)
  body = Faker::Lorem.paragraph
  Reply.create(user: User.find(i/2+1), body: body, tweet: Tweet.find(i/2+1))
end
