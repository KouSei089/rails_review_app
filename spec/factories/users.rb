FactoryBot.define do
  factory :user do
    email { 'test@example.com' }
    password { '1234' }
    password_confirmation { '1234' }
  end
end
