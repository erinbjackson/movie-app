# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Actor.create(first_name: "Melissa", last_name: "McCarthy", known_for: "bridesmaids" )
# Actor.create(first_name:"Kristen", last_name: "Wigg", known_for: "SNL")
# require 'ffaker'

# Actor.create(first_name: FFaker::Name.first_name, last_name:FFaker::Name.last_name, known_for: FFaker::Movie.title)
# end
movies = Movie.create([{title: "Inception", year: 2014, plot:"Some people make a world within dreams and some crazy shit happens."}, {title: "Juno", year: 2008, plot: "Highschooler becomes pregnant and has to deal with being pregnant in highschool and finding a family to adopt the baby."},{title: "Galaxy Quest", year: 2002, plot: "Some people who are on a space travel TV show wind up getting transported to another planet to help save the people on that planet."}])
