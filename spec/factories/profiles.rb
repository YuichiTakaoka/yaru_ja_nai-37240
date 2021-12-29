FactoryBot.define do
  factory :profile do
    name                  { Faker::Name.name }
    consept               { '私は〇〇です。' }
    position_id           { 3 }
    depertment_id         { 2 }
    division_id           { 3 }
    license_id            { 2 }
    strength              { '私の得意分野は〇〇です' }
    weakness              { '私の苦手分野は〇〇です' }
    association :user

    after(:build) do |profile|
      profile.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
