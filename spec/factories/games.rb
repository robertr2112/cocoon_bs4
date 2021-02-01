FactoryBot.define do
  factory :game do
    Week { nil }
    homeTeamIndex { 1 }
    awayTeamIndex { 1 }
    spread { 1 }
    homeTeamScore { 1 }
    awayTeamScore { 1 }
    game_date { "2021-02-01 12:46:44" }
  end
end
