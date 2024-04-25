require 'faker'

10.times do
    City.create(city_name: Faker::Adress.city)
end

20.times do
    Dog.create(
        name: Faker::Creature::Dog.name,
        breed: Faker::Creature::Dog.name,
        age: rand(1..15),
        city: City.all.sample
    )
end

20.times do
    Dogsitter.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        age: rand(18..65),
        city: City.all.sample
    )
end