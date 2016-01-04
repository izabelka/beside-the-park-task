FactoryGirl.define do
  factory :language do
    name { Faker::Lorem.sentence(1) }
  end
end
