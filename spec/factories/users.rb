require 'ffaker'
FactoryGirl.define do
  factory :user do
    email { FFaker::Internet.email }
    password "12345678"
    password_confirmation "12345678"
    auth_token { FFaker::Internet.user_name }
  end
end