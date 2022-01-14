FactoryBot.define do
  factory :comment do
    text { "MyText" }
    user_id { 1 }
    profile_id { 1 }
  end
end
