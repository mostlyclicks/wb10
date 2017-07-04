
FactoryGirl.define do
  factory :redirect, :class => Refinery::Redirects::Redirect do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

