FactoryGirl.define do
  factory :customer do
    sequence :email do |n|
      "skullcap#{n}@riseup.net"
    end
    password "tulsitulsi"
  end
end


