class AddPasswordDigestToBookers < ActiveRecord::Migration[5.1]
  def change
    add_column :bookers, :password_digest, :string
  end
end
