# frozen_string_literal: true

4.times do
  Category.create(name: Faker::University.name)
end
