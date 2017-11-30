class AddCompanyIdToTechnicians < ActiveRecord::Migration[5.1]
  def change
    add_column :technicians, :company_id, :integer
  end
end
