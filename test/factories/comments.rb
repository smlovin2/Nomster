FactoryGirl.define do
  factory :comment do
    message "yuck"
    rating '1_star'
    association :user
    association :place
  end
end
