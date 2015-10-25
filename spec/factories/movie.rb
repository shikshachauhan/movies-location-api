FactoryGirl.define do
  factory :movie do
    location { Faker::Address.city  }
  end
end
