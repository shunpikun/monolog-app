FactoryBot.define do
  factory :property do
    name {Faker::Lorem.word}
    info {Faker::Lorem.sentence}
    frequency_id {Faker::Number.between(to: 5)}
    storage {Faker::Lorem.sentence}
    association :user
    after(:build) do |property|
      property.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
