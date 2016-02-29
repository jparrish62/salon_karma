FactoryGirl.define do
  factory :user do
    email "tonya@gmail.com"
    password "12345678"
    trait :admin do
        role 'admin'
    end
  end
end
