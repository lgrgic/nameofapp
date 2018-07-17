FactoryBot.define do
  sequence(:email) { |n| "user#{n}@geezmail.com" }

  factory :user, class: User do
    email
    password "numberOne"
    first_name "Luka"
    last_name "Cabron"
    admin false
  end

end
