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
puts 'all done'
