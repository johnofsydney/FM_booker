class AddDateCompletedToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :date_completed, :date
  end
end
