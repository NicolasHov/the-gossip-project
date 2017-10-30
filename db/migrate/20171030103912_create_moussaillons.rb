class CreateMoussaillons < ActiveRecord::Migration[5.1]
  def change
    create_table :moussaillons do |t|
      t.text :bio
      t.string :username
      t.string :mail

      t.timestamps
    end
  end
end
