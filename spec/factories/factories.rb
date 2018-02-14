FactoryBot.define do
  factory :dog do
    jump_height 3

    initialize_with { new(attributes) }
  end

  factory :human do
    jump_height 2

    initialize_with { new(attributes) }
  end
end
