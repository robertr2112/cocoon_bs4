require 'rails_helper'

RSpec.describe Week, type: :model do

  let(:season) { FactoryBot.create(:season_with_weeks, num_weeks: 1) }

  before(:each) do
    @week = season.weeks.first
  end

  subject {@week}

  it { should respond_to(:state) }
  it { should respond_to(:season_id) }
  it { should respond_to(:week_number) }
  it { should respond_to(:games) }

  it { should be_valid }

  it "should have the right associated season_id" do
    season_id = @week.season_id
    expect(season_id).to eq season.id
  end

end
