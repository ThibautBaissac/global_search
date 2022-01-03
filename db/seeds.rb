require 'faker'

# DESTOY ALL
puts "Destroying all Movies"
Movie.destroy_all
puts "Destroying all Directors"
Director.destroy_all

puts "--------"

# CREATE DIRECTORS
20.times do
  director = Director.new(name: Faker::Name.name)
  director.save!
  puts "Created director : #{director.name}"
end

# CREATE MOVIES
100.times do
  movie = Movie.new(title: Faker::Movie.title,
  description: Faker::Movie.quote,
  director: Director.all.sample)
  movie.save!
  puts "Created movie : #{movie.title}"
end


puts "--------"
puts "Successful seed creation"
