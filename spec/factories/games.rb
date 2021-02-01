# == Schema Information
#
# Table name: games
#
#  id            :bigint           not null, primary key
#  awayTeamIndex :integer
#  awayTeamScore :integer
#  game_date     :datetime
#  homeTeamIndex :integer
#  homeTeamScore :integer
#  spread        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  week_id       :bigint
#
# Indexes
#
#  index_games_on_week_id  (week_id)
#
# Foreign Keys
#
#  fk_rails_...  (week_id => weeks.id)
#
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
