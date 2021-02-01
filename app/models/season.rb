class Season < ApplicationRecord

  # Setup the year
  before_create do
    self.year = Time.now.strftime("%Y")
    self.current_week = 1
    self.state = Season::STATES[:Pend]
  end

  has_many :weeks, dependent: :delete_all

  STATES = { Pend: 0, Open: 1, Closed: 2 }
  
end
