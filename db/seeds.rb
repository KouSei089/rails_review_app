10.times do
  User.create(
      name: Faker::Internet.name,
      email: Faker::Internet.email,
      password: '12345678',
      password_confirmation: '12345678'
  )
end

20.times do |index|
  Post.create(
      user: User.offset(rand(User.count)).first,
      name: "タイトル#{index}",
      description: "本文#{index}"
  )
end
