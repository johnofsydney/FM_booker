class Approvals < ActiveRecord::Migration[5.1]
  def change
    create_table :approvals do |t|
      t.integer :company_id
      t.integer :technician_id
      t.boolean :approved
    end
  end
end
