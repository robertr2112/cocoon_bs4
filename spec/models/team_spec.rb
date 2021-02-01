require 'rails_helper'

RSpec.describe Team, type: :model do

  before(:each) do
    @Team= Team.create(Name: "Chicago Bears" , awayTeamIndex: 1,
                              spread: 3.5)
  end

  subject {@game}

  it { should respond_to(:week_id) }
  it { should respond_to(:homeTeamIndex) }
  it { should respond_to(:awayTeamIndex) }
  it { should respond_to(:spread) }
  it { should respond_to(:homeTeamScore) }
  it { should respond_to(:awayTeamScore) }
  it { should respond_to(:wonGame?) }

  it { should be_valid }
end
