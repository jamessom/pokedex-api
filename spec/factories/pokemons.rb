FactoryBot.define do
  factory :pokemon do
    name { "MyString" }
    has_evolution { "" }
    evolution_id { "" }
  end
end
