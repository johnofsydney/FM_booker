# == Schema Information
#
# Table name: jobs
#
#  id             :integer          not null, primary key
#  summary        :text
#  detail         :text
#  address        :text
#  requested_date :date
#  accepted_date  :date
#  finished       :boolean
#  booker_id      :integer
#  technician_id  :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  date_completed :date
#

class Job < ApplicationRecord
  belongs_to :booker
  belongs_to :technician, :optional => true
end
