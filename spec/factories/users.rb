FactoryBot.define do
  factory :user do
    email { Faker::Internet.safe_email }
    password 'password'
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end

  factory :admin, parent: :user do
    role 1
  end
end