class DropApprovals < ActiveRecord::Migration[5.1]
  def change
    drop_table :approvals 
  end
end
