FactoryBot.define do
  factory :user do
    username { "MyString" }
    email { "MyString" }
    password { "MyString" }
    uid { 1 }
    provider { "MyString" }
  end
end
