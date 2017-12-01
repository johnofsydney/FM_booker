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
  has_many :bookers
  has_many :approvals
  has_many :jobs, :through => :bookers
  has_many :technicians, :through => :approvals
end
