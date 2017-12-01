class RemoveCompanyIdFromTechnicians < ActiveRecord::Migration[5.1]
  def change
    remove_column :technicians, :company_id, :integer
  end
end
