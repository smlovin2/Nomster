FactoryGirl.define do
  factory :place do
    name "Lulu's Bakery"
    address "Boston, MA, 02114"
    description "Try the cupcakes"
    latitude(42.3631519)
    longitude(-71.056098)
    association :user
  end
end
