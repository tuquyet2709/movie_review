User.create!(name: "Admin",
             email: "admin@gmail.com",
             password: "123456",
             password_confirmation: "123456",
             role: 0)

20.times do |n|
  name  = Faker::Name.name
  email = "user#{n+1}@gmail.com"
  password = "123456"
  User.create!(name:  name,
               email: email,
               password: password,
               password_confirmation: password,
               role: 1)
end

20.times do |n|
  name  = Faker::Name.name
  Actor.create!(name:  name)
end

image_data  = File.open(File.join(Rails.root,'app/assets/images/phim4.jpg'))

50.times do |n|
  name  = Faker::Superhero.name
  info = Faker::Lorem.sentence(5)
  Movie.create!(name:  name,
                picture: image_data,
                info: info,
                check: 1,
                date: Date.current,
                rate_score: 0)
end

10.times do |n|
  name  = Faker::Superhero.name
  info = Faker::Lorem.sentence(5)
  Movie.create!(name:  name,
                picture: image_data,
                info: info,
                check: 0,
                date: Date.current,
                rate_score: 0)
end

(1..20).each do |x|
  Review.create!(user_id: x+1,
                 movie_id: x,
                 content: Faker::Lorem.sentence(10),
                 review_voteup: 0,
                 review_votedown: 0)

  Rate.create!(user_id: x+1,
                 movie_id: x,
                 rate: 0)

  MovieCharacter.create!(movie_id: x,
                         actor_id: x)
  MovieCharacter.create!(movie_id: x+1,
                         actor_id: x)
  MovieCharacter.create!(movie_id: x+2,
                         actor_id: x)
end

