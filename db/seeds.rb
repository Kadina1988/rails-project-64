# frozen_string_literal: true

4.times do
  Category.create(name: Faker::University.name)
end

User.create(email: 'ivan@san.com', password: 'komsomolsk')
User.create(email: 'maga@san.com', password: 'komsomol')

Post.create(
  { title: Faker::Movies::HarryPotter.character, body: Faker::Movies::HarryPotter.book, creator_id: User.first.id, category_id: Category.last.id }
)

PostComment.create(content: Faker::Movies::HarryPotter.house, user_id: User.last.id, post_id: Post.last.id)

comment = PostComment.first
comment1 = comment.children.create(content: Faker::Music::Opera.donizetti, user_id: User.first.id, post_id: Post.first.id)
comment1.children.create(content: Faker::Music::Opera.mozart, user_id: User.last.id, post_id: Post.first.id)


