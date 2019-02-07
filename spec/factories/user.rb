FactoryBot.define do
  factory :user do
    name     "Fedor"
    email    "shoo@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
