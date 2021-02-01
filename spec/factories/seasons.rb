FactoryBot.define do
  factory :season do
    year { "" }
    state { "" }
    nfl_league { "" }
    number_of_weeks { "" }
    current_week { 1 }
  end
end
