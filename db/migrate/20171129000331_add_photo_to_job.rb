class AddPhotoToJob < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :photo, :text 
  end
end
