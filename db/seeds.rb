# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.find_or_create_by(:name => "games", :slug => "games")
Category.find_or_create_by(:name => "movies", :slug => "movies")
Category.find_or_create_by(:name => "tv", :slug => "tv")
