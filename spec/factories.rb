FactoryGirl.define do
  factory :customer do
    sequence :email do |n|
      "test@test.com"
    end
    password "test"
  end
end


