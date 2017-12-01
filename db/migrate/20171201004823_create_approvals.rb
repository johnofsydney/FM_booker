class CreateApprovals < ActiveRecord::Migration[5.1]
  def change
    create_table :approvals do |t|
      t.integer :company_id
      t.integer :technician_id
      t.boolean :approved
      t.timestamps
    end
  end
end
