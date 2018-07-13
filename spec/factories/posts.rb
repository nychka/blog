FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence }
    text { Faker::Lorem.paragraph }
    image { Faker::Avatar.image }
    attachment { Faker::File.file_name('path/to') }
  end
end
