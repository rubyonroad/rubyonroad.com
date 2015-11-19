FactoryGirl.define do
  factory :post do
    title Faker::Lorem.sentence
    body Faker::Lorem.paragraphs.join(' ')
    post_at DateTime.now
  end
end
