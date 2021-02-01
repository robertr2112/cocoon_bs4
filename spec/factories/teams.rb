# == Schema Information
#
# Table name: teams
#
#  id         :bigint           not null, primary key
#  imagePath  :string
#  name       :string
#  nfl        :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :team do
    name { "MyString" }
    nfl { false }
    imagePath { "MyString" }
  end
end
