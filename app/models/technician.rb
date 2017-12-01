# == Schema Information
#
# Table name: technicians
#
#  id              :integer          not null, primary key
#  email           :text
#  name            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class Technician < ApplicationRecord
  has_secure_password
  has_many :jobs
  has_many :approvals

  validates :email, :presence => true, :uniqueness => true
end
