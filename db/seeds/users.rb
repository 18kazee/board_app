10.times do
  User.create!(
    last_name: Faker::Name.unique.last_name,
    first_name: Faker::Name.unique.first_name,
    email: Faker::Internet.email,
    password: "test1234",
    password_confirmation: "test1234"
  )
end
