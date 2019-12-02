# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
Event.destroy_all
Owner.destroy_all
Breed.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
  end

20.times do 
    Owner.create(
        name: Faker::Games::Heroes.name,
        age: rand(12..80),
        phone: Faker::PhoneNumber.phone_number
    )
end

10.times do
    Breed.create(
        name: Faker::Creature::Cat.breed
    )
end

50.times do
    Cat.create(
        name: Faker::Creature::Cat.name,
        age: rand(0..20),
        breed: Faker::Creature::Cat.breed,
        fluffy: Faker::Boolean.boolean,
        owner_id: rand(1..20),
        breed_id: rand(1..10)
    )
end

20.times do
    Event.create(
        title: Faker::Marketing.buzzwords,
        starts: Faker::Time.forward(days: 35),
        owner_id: rand(1..20)
    )
end

