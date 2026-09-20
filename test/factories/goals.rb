FactoryBot.define do
  factory :goal do
    title { Faker::Lorem.sentence(word_count: 3) }
    frequency { ["daily", "weekly"].sample }
    target_count { rand(1..7) }
    is_active { true }
    association :user
  end
end
