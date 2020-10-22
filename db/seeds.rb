# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

100.times do
    dog = Dog.create(dog_name: Faker::Name.unique.first_name)
    end

    100.times do 
        dogsitter = Dogsitter.create(dogsitter_name: Faker::Name.unique.first_name)
    end

    20.times do
        city = City.create(city_name: Faker::Address.city)
    end

    20.times do
        stroll = Stroll.create(dog: Dog.all.sample, dogsitter: Dogsitter.all.sample, city: City.all.sample)
    end