FactoryGirl.define do
  factory :user do
    id 123456
    name "Nikhil"
  end
end

FactoryGirl.define do
  factory :post do
    association :user
    title "Some title"
    message "Some message"
  end
end
