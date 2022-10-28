FactoryBot.define do
  factory :expense do
    user
    category_id {1}
    amount {12}
    date {"23-12-2000"}
  end
end
