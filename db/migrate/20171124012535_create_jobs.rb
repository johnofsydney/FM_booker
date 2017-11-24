class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.text :summary
      t.text :detail
      t.text :address
      t.date :requested_date
      t.date :accepted_date
      t.boolean :finished
      t.integer :booker_id
      t.integer :technician_id
      t.timestamps
    end
  end
end
