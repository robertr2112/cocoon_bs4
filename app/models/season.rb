# == Schema Information
#
# Table name: seasons
#
#  id              :bigint           not null, primary key
#  current_week    :integer
#  nfl_league      :boolean
#  number_of_weeks :integer
#  state           :integer
#  year            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Season < ApplicationRecord

  # Setup the year
#   before_create do
#     self.year = Time.now.strftime("%Y")
#     self.current_week = 1
#     self.state = Season::STATES[:Pend]
#   end

  has_many :weeks, dependent: :delete_all

  STATES = { Pend: 0, Open: 1, Closed: 2 }

  def setState(new_state)
    self.update_attribute(:state, new_state)
  end

  def isPending?
    self.state == STATES[:Pend]
  end

  def isOpen?
    self.state == STATES[:Open]
  end

  def isClosed?
    self.state == STATES[:Closed]
  end

  def canBeClosed?
    if self.weeks.empty?
      return false
    end
    if self.weeks.count != self.number_of_weeks
      return false
    end
    self.weeks.order(:week_number).each do |week|
      if !week.checkStateFinal
        return false
      end
    end
    return true
  end

  #
  # Return a link to the current_week record
  #
  def getCurrentWeek
    self.weeks.find_by_week_number(self.current_week)
  end
  
  
  
end
