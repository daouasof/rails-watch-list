puts "Cleaning the db..."
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

puts "Generating 15 movies"

15.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: 'https://lumiere-a.akamaihd.net/v1/images/og-generic_02031d2b.png?region=0%2C0%2C1200%2C1200',
    rating: rand(0.1..9.9)
  )
  puts "Movie with id #{movie.id} generated"
end

action = List.new(name: 'Action')
action.photo.attach(
  io: File.open('app/assets/images/action_movie.jpg'),
  filename: 'action_movie.jpg',
  content_type: 'image/jpg'
)
action.save!
puts "Action list created"

romance = List.new(name: 'Romance')
romance.photo.attach(
  io: File.open('app/assets/images/romance_movie.jpg'),
  filename: 'romance_movie.jpg',
  content_type: 'image/jpg'
)
romance.save!
puts "Romance list created"

comedy = List.new(name: 'Comedy')
comedy.photo.attach(
  io: File.open('app/assets/images/comedy_movie.jpg'),
  filename: 'comedy_movie.jpg',
  content_type: 'image/jpg'
)
comedy.save!
puts "Comedy list created"

puts 'all done'
