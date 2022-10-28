FactoryBot.define do
    factory :user do
      first_name { "member_#{Faker::Name.first_name}" }
      last_name { "member_#{Faker::Name.last_name}" }
      username { "u_#{Faker::Music.instrument}" }
      email { "member_#{Faker::Internet.email}" }
      password { 'password' }
    end
  end

