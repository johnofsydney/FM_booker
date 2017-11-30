class AddCompanyIdToBookers < ActiveRecord::Migration[5.1]
  def change
    add_column :bookers, :company_id, :integer
  end
end
