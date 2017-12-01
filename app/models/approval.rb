# == Schema Information
#
# Table name: approvals
#
#  id            :integer          not null, primary key
#  company_id    :integer
#  technician_id :integer
#  approved      :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Approval < ApplicationRecord
  belongs_to :company
  belongs_to :technician

end
