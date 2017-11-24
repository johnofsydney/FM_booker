class CreateTechnicians < ActiveRecord::Migration[5.1]
  def change
    create_table :technicians do |t|
      t.text :email
      t.text :name
      t.timestamps
    end
  end
end
