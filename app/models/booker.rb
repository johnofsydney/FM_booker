# == Schema Information
#
# Table name: bookers
#
#  id         :integer          not null, primary key
#  email      :text
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Booker < ApplicationRecord
  has_many :jobs 
end
