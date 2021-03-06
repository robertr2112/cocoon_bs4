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
class Game < ApplicationRecord
  belongs_to :week
end
