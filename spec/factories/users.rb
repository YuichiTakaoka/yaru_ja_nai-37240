FactoryBot.define do
  factory :user do
    name                  { Faker::Name.name }
    email                 { Faker::Internet.free_email }
    password              { '123456d' }
    password_confirmation { password }
    birthday_year         { Faker::Date.birthday }
    gender_id             { 2 }
  end
end
