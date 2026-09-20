FactoryBot.define do
  factory :check_in do
    date { Faker::Date.between(from: 30.days.ago, to: Date.today) }
    completed { [true, false].sample }
    note { Faker::Lorem.sentence }
    association :goal
  end
end
