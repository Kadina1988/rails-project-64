# frozen_string_literal: true

4.times do
  Category.create(name: Faker::University.name)
end

User.create(
  email: 'first@user',
  password: 'ramazan'
)

Post.create(
  title: Faker::Sports::Football.team,
  body: Faker::TvShows::Friends.quote,
  category_id: Category.first.id,
  creator_id: User.first.id,
)


