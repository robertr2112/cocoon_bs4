# == Schema Information
#
# Table name: weeks
#
#  id          :bigint           not null, primary key
#  state       :integer
#  week_number :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  season_id   :bigint
#
# Indexes
#
#  index_weeks_on_season_id  (season_id)
#
# Foreign Keys
#
#  fk_rails_...  (season_id => seasons.id)
#
FactoryBot.define do
  factory :week do
    state { 1 }
    week_number { 1 }
    season { nil }
  end
end
