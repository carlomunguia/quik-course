# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!(
#   email: "admin@example.com",
#   password: "password",
#   password_confirmation: "password"
# )

# user.skip_confirmation!
# user.save!

PublicActivity.enabled = false
30.times do
  Course.create!(
    [
      {
        title: Faker::Educator.course_name,
        description: Faker::Quote.jack_handey,
        user_id: User.first.id,
        short_description: Faker::TvShows::TwinPeaks.quote,
        language: Faker::Nation.language,
        level: "Beginner",
        price: Faker::Number.between(from: 1000, to: 20_000)
      }
    ]
  )
end
PublicActivity.enabled = true
