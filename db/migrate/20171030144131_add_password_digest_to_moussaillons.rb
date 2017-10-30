class AddPasswordDigestToMoussaillons < ActiveRecord::Migration[5.1]
  def change
    add_column :moussaillons, :password_digest, :string
  end
end
