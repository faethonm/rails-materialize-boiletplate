FactoryGirl.define do
  factory :permutator do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.first_name }
    company_domain {FFaker::Internet.domain_name}
  end
end
