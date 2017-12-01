# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ApplicationRecord
  has_many :technicians
  has_many :approvals
  has_many :jobs, :through => :bookers
end
