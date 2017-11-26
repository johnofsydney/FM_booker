class AddPasswordDigestToTechnicians < ActiveRecord::Migration[5.1]
  def change
    add_column :technicians, :password_digest, :string
  end
end
