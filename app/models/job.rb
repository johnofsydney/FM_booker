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
#  photo          :text
#

class Job < ApplicationRecord
  belongs_to :booker
  belongs_to :technician, :optional => true

  validates :requested_date, :presence => true
  
  include PgSearch
  pg_search_scope :search_full_text, against: {
  summary: 'A',
  detail: 'B'
  }
end
