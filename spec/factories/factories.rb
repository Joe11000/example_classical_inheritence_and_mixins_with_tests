require 'faker'

FactoryBot.define do
  factory :animal do
    add_attribute(:name) { Faker::Name.first_name }

    initialize_with { new(attributes) }
  end


  factory :dog do
    add_attribute(:name) { Faker::Name.first_name }
    jump_height { rand(2.0..4.0).floor(2) }

    initialize_with { new(attributes) }
  end

  factory :human do
    add_attribute(:name) { Faker::Name.first_name }

    jump_height { rand(1.0..3.0).floor(2) }

    initialize_with { new(attributes) }
  end
end
